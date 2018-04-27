/*
 * This file is an ros version of nvdia detectnet used for UAV recognition and tracking system
 * The raw detectnet code is from here: http://github.com/dusty-nv/jetson-inference
 */

#include "stdio.h"
#include "stdlib.h"

#include <ros/ros.h>
#include <opencv2/core.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui.hpp>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>

#include <std_msgs/String.h>
#include <std_msgs/Int32.h>

#include "detectNet.h"
#include "loadImage.h"
#include <time.h>
#include "cudaMappedMemory.h"
#include "jetson/Sendselect.h"
#include "jetson/rect.h"
#include "jetson/flage.h"

#include <sys/time.h>
#include <pluginlib/class_list_macros.h>
#include <nodelet/nodelet.h>

//nodelet 可以实现结点间的 zero copy
//nodelet could be used for zero copy between ros node
class ros_detectNet:public nodelet::Nodelet
{
public:
    //创建一个TX1 的node结点，下文的it理解为两者等价
    // create a TX1 node, 
    ros::NodeHandle private_nh ;

    detectNet* net=NULL;
    uint32_t maxBoxes = 0;
    uint32_t classes = 0;

    float* bbCPU = NULL;
    float* bbCUDA = NULL;
    float* confCPU = NULL;
    float* confCUDA = NULL;

    float* imgCPU = NULL;
    float* imgCUDA = NULL;
    int imgWidth = 0;
    int imgHeight = 0;
    int imgSize = 0;

    int flag=0;

    int numBoundingBoxes = 0;

    int numframe=0;
    image_transport::Subscriber imsub;
    image_transport::ImageTransport it;

    ros::Subscriber flagSub;

    // tk1下的 runtracker.cpp 订阅了这个topic 这个用来传递pubmsg 里面的坐标消息
    // tk1 runtracker.cpp subscribe this topic, this topic used for send pubmsg(bounding box) to tk1 
    ros::Publisher pub=private_nh.advertise<jetson::Sendselect>("jetson/chatter",10);

    //这里的pubmsg是指 msg 目录下面定义了Sendselect.msg 里面有 int32[] p1 p2 p2 p3 就是我们要传递的左上角和右下角的坐标
    // the bounding box msg, including p1 p2 p3 p4
    jetson::Sendselect pubmsg;

public:
    // 类构造函数 初始化时候指定该ROS结点为传输图像的结点 ros::image_transport
    // The ros_detectNet node is a image _transport node
    ros_detectNet():it(private_nh)
    {
      //ros::Rate loop_rate(10);
    }


    ~ros_detectNet()
    {
        CUDA(cudaFreeHost(imgCPU));
        delete net;
    }


    void onInit()
    {
        // 创建神经网络
        // create a neural network from detectNet
        net = detectNet::Create(detectNet::PEDNET);

        if(!net)
        {
            printf("detectNet-ros: failed to initialize detectNet\n");
            return ;
        }
        maxBoxes = net->GetMaxBoundingBoxes();
        classes = net->GetNumClasses();

        // 给最大的边框分配内存大小
        // allocate cuda core for maxBoxed and classes
	    if(!cudaAllocMapped((void**)&bbCPU,(void**)&bbCUDA,maxBoxes*sizeof(float4)) || !cudaAllocMapped((void**)&confCPU,(void**)&confCUDA,maxBoxes*classes*sizeof(float)))
        {
            printf("detectnet-ros: failed to alloc output memory\n");
        }

        // 订阅主题TK1端 DJI结点的 nv_camera.cpp 发布的主题 image_raw ，从而收取图像，收取完成后执行callback
        // subscribe DJI node image_raw on tk1
        imsub = it.subscribe("/dji_sdk/image_raw",1,&ros_detectNet::callback,this);  
        // flag for test
        flagSub = private_nh.subscribe("jetson/flag",1,&ros_detectNet::callflag,this);
    }


    void callflag(const jetson::flage msg)
    {
        flag = msg.flagTest;
    }

    // 这个输入是ros::sensor_msgs，是在TK1端就已经定下来的，通过ros传递
    // process image_raw from tk1
    void callback(const sensor_msgs::ImageConstPtr& input)
    {
        //输入图像预处理， 讲输入图像转换为opencv的格式到cv_im中
        // convert ros image_raw to opencv image
        cv::Mat cv_im = cv_bridge::toCvCopy(input,"bgr8")->image;
        ROS_INFO("image ptr at %p",cv_im.data);
        cv_im.convertTo(cv_im,CV_32FC3);
        cv::cvtColor(cv_im,cv_im,CV_BGR2RGBA);
        // 获得输入图像的长宽 计算图像大小
        // got size of image
        imgHeight = cv_im.rows;
        imgWidth = cv_im.cols;
        imgSize = cv_im.rows*cv_im.cols*sizeof(float4);
        // 如果要求用GPU 即默认值imgCPU=NULL 
        // if need GPU to process this data, default use GPU
	    if(!imgCPU)
        {
            // 给输入的图片分配cuda内存空间
            // allocate cuda for image
		    if(!cudaAllocMapped((void**)&imgCPU,(void**)&imgCUDA,imgSize))
        	    {
                	printf("failed to allocated %d bytes for image\n",imgSize);
                	return ;
        	    }
        }
        memcpy(imgCPU,(float*)cv_im.data,imgSize);
        printf("This is %d frame\n",numframe++);
        //imgCPU = (float*)(cv_im.data);

        // 调用detect给出坐标，在bbCPU中，即开始用网络分割图像
        // call detectnet to calculate bounding box point into bbCPU
        numBoundingBoxes = maxBoxes;
        const bool result = net->Detect(imgCUDA,imgWidth,imgHeight,bbCPU,&numBoundingBoxes,confCPU);

        if(!result)
            printf("detectnet-ros: failed to classify\n");
        else 
        {
            printf("%i bounding boxes detected\n",numBoundingBoxes);

            int lastClass = 0;
            int lastStart = 0;
		    //pubmsg.n=numBoundingBoxes;
            for(int n=0;n<numBoundingBoxes;n++)
            {
                const int nc = confCPU[n*2+1];
                float* bb = bbCPU+(n*4);

                // This is used for print bouding box during testing
                // printf("bounding box %i  (%f,%f) (%f,%f) w=%f h=%f\n",n,bb[0],bb[1],bb[2],bb[3],bb[2]-bb[0],bb[3]-bb[1]);
                #if 1
                // 发送 coordinate(x1,y1,x2,y2) 传递坐标到跟踪节点
                // publish coordinate(x1,y1,x2,y2)
                pubmsg.p1.push_back(bb[0]);
		        pubmsg.p2.push_back(bb[1]);
		        pubmsg.p3.push_back(bb[2]);
		        pubmsg.p4.push_back(bb[3]);
                #endif
                #if 0
		        pubmsg.x.push_back(bb[0]);
			    pubmsg.y.push_back(bb[1]);
			    pubmsg.width.push_back(bb[2]-bb[0]);
		        pubmsg.heigth.push_back(bb[3]-bb[1]);
                #endif
             }

            pub.publish(pubmsg);
            #if 0
            pubmsg.x.clear();
            pubmsg.y.clear();
            pubmsg.width.clear();
            pubmsg.heigth.clear();
            #endif
		    pubmsg.p1.clear();
            pubmsg.p2.clear();
            pubmsg.p3.clear();
            pubmsg.p4.clear();
            CUDA(cudaThreadSynchronize());
      }
    //  }
      }






};

int main(int argc,char** argv)
{
    // 启动一个ros 结点
    //intilize a ros note
    ros::init(argc,argv,"ros_detectNet");

    // 自己定义的类
    // my ros_detectnet class
    ros_detectNet ic;

    // 调用自己定义的类的oninit
    // Init my ros_detectnet node 
    ic.onInit();

    ros::spin();

    return 0;
}