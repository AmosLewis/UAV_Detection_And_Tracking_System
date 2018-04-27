/*************************************************************************
	> File Name: listener.cpp
	> Author: 
	> Mail: 
	> Created Time: Tue 11 Apr 2017 04:37:09 PM CST
 ************************************************************************/

#include<iostream>
#include<vector>

#include"ros/ros.h"
#include"Sendselect.h"
#include"rect.h"

#include"image_transport/image_transport.h"
#include"cv_bridge/cv_bridge.h"
#include"sensor_msgs/image_encodings.h"
#include"opencv2/imgproc/imgproc.hpp"
#include"opencv2/highgui/highgui.hpp"

using namespace std;

void subImage(const sensor_msgs::ImageConstPtr& msg);
void chatterCallback(const jetson::Sendselect msg);
int countFrame=0;
vector<int32_t> pi1,pi2,pi3,pi4;
cv::VideoWriter writer("/home/ubuntu/Videos/3.avi",CV_FOURCC('M','J','P','G'),25.0,cv::Size(1920,1080));

void subImage(const sensor_msgs::ImageConstPtr& msg)
{
//if(countFrame==4){
//countFrame=0;
    cv_bridge::CvImagePtr cv_ptr;

    CvPoint poin1,poin2;

    cv_ptr = cv_bridge::toCvCopy(msg,sensor_msgs::image_encodings::BGR8);
   
    for(int i=0;i<pi1.size();i++)
    { 
        poin1.x=pi1[i];
        poin1.y=pi2[i];
        poin2.x=pi3[i];
        poin2.y=pi4[i];
        cv::rectangle(cv_ptr->image,poin1,poin2,cv::Scalar(255,0,0),2);
    }
   
    cv::cvtColor(cv_ptr->image,cv_ptr->image,CV_BGR2RGB);
    writer<<cv_ptr->image;
    cv::imshow("test",cv_ptr->image);
    
    
    cv::waitKey(3);
//}
//countFrame++;
}

void chatterCallback(const jetson::Sendselect msg)
{
  
    printf("There are %d people!\n",(int)msg.p1.size());
 	pi1.clear();
    pi2.clear();
    pi3.clear();
    pi4.clear();
    for(int i=0;i<msg.p1.size();i++)
    {
        pi1.push_back(msg.p1[i]);
        pi2.push_back(msg.p2[i]);
        pi3.push_back(msg.p3[i]);
        pi4.push_back(msg.p4[i]);

    	ROS_INFO("I heard: [x:%d y:%d w:%d h:%d]",msg.p1[i],msg.p2[i],msg.p3[i],msg.p4[i]);
    }
    
 
}

void chatterRect(const jetson::rect msg)
{
  
    printf("There are %d people!\n",(int)msg.x.size());
 	
    for(int i=0;i<msg.x.size();i++)
    {

    	ROS_INFO("I heard: [x:%d y:%d w:%d h:%d]",msg.x[i],msg.y[i],msg.width[i],msg.heigth[i]);
    }
    
 
}

int main(int argc,char** argv)
{
    ros::init(argc,argv,"listerner");

    ros::NodeHandle n;

    
    image_transport::ImageTransport it(n);
    
    
    image_transport::Subscriber img_sub;

    
    img_sub = it.subscribe("/dji_sdk/image_raw",1,subImage);
   
    ros::Subscriber sub=n.subscribe("jetson/chatter",10,chatterCallback);

    ros::spin();

    return 0;
}

