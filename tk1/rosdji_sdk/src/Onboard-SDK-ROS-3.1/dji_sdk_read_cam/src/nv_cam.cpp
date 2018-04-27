#include "ros/ros.h"
#include <image_transport/image_transport.h>//ros 下用于快速传递图像 zero copy
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <sensor_msgs/CameraInfo.h>
#include <sys/stat.h>
#include <sys/time.h>
#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <pthread.h>
#include <unistd.h>
#include <poll.h>
#include <signal.h>
#include <assert.h>
#include <sys/types.h>
#include <unistd.h>
#include "cv.h"
#include "highgui.h"
#include "djicam.h"

typedef unsigned char   BYTE;
#define IMAGE_W 1280
#define IMAGE_H 720
#define FRAME_SIZE              IMAGE_W*IMAGE_H*3


unsigned char buffer[FRAME_SIZE] = {0};
unsigned int frame_size = 0;
unsigned int nframe = 0;
FILE *fp;


struct sRGB{
	int r;
	int g;
	int b;
};
//convert yuv to rgb
sRGB yuvTorgb(int Y, int U, int V)
{
	sRGB rgb;
	rgb.r = (int)(Y + 1.4075 * (V-128));
	rgb.g = (int)(Y - 0.3455 * (U-128) - 0.7169*(V-128));
	rgb.b = (int)(Y + 1.779 * (U-128));
	rgb.r =(rgb.r<0? 0: rgb.r>255? 255 : rgb.r);
	rgb.g =(rgb.g<0? 0: rgb.g>255? 255 : rgb.g);
	rgb.b =(rgb.b<0? 0: rgb.b>255? 255 : rgb.b);
	return rgb;
}
//convert nv12 to rgb
unsigned char * NV12ToRGB(unsigned char * src, unsigned char * rgb, int width, int height){
	int numOfPixel = width * height;
	int positionOfU = numOfPixel;
	int startY,step,startU,Y,U,V,index,nTmp;
	sRGB tmp;

	for(int i=0; i<height; i++){
		startY = i*width;
		step = i/2*width;
		startU = positionOfU + step;
		for(int j = 0; j < width; j++){
			Y = startY + j;
			if(j%2 == 0)
				nTmp = j;
			else
				nTmp = j - 1;
			U = startU + nTmp;
			V = U + 1;
			index = Y*3;
			tmp = yuvTorgb((int)src[Y], (int)src[U], (int)src[V]);
			rgb[index+0] = (char)tmp.b;
			rgb[index+1] = (char)tmp.g;
			rgb[index+2] = (char)tmp.r;
		}
	}
	return rgb;
}
// useless
bool YUV420_To_BGR24(unsigned char *puc_y, unsigned char *puc_u, unsigned char *puc_v, unsigned char *puc_rgb, int width_y, int height_y)
{
	if (!puc_y || !puc_u || !puc_v || !puc_rgb)
	{
		return false;
	}
	int baseSize = width_y * height_y;
	int rgbSize = baseSize * 3;

	BYTE* rgbData = new BYTE[rgbSize];
	memset(rgbData, 0, rgbSize);

	int temp = 0;

	BYTE* rData = rgbData; 
	BYTE* gData = rgbData + baseSize;
	BYTE* bData = gData + baseSize;

	int uvIndex =0, yIndex =0;


	for(int y=0; y < height_y; y++)
	{
		for(int x=0; x < width_y; x++)
		{
			uvIndex = (y>>1) * (width_y>>1) + (x>>1);
			yIndex = y * width_y + x;

			temp = (int)(puc_y[yIndex] + (puc_v[uvIndex] - 128) * 1.4022);
			rData[yIndex] = temp<0 ? 0 : (temp > 255 ? 255 : temp);

			temp = (int)(puc_y[yIndex] + (puc_u[uvIndex] - 128) * (-0.3456) +
					(puc_v[uvIndex] - 128) * (-0.7145));
			gData[yIndex] = temp < 0 ? 0 : (temp > 255 ? 255 : temp);

			temp = (int)(puc_y[yIndex] + (puc_u[uvIndex] - 128) * 1.771);
			bData[yIndex] = temp < 0 ? 0 : (temp > 255 ? 255 : temp);
		}
	}

	int widthStep = width_y*3;
	for (int y = 0; y < height_y; y++)
	{
		for (int x = 0; x < width_y; x++)
		{
			puc_rgb[y * widthStep + x * 3 + 2] = rData[y * width_y + x]; //R
			puc_rgb[y * widthStep + x * 3 + 1] = gData[y * width_y + x]; //G
			puc_rgb[y * widthStep + x * 3 + 0] = bData[y * width_y + x]; //B
		}
	}

	if (!puc_rgb)
	{
		return false;
	}
	delete [] rgbData;
	return true;
}

// useless
IplImage* YUV420_To_IplImage(unsigned char* pYUV420, int width, int height)
{
	if (!pYUV420)
	{
		return NULL;
	}

	int baseSize = width*height;
	int imgSize = baseSize*3;
	BYTE* pRGB24 = new BYTE[imgSize];
	memset(pRGB24, 0, imgSize);

	int temp = 0;

	BYTE* yData = pYUV420; 
	BYTE* uData = pYUV420 + baseSize; 
	BYTE* vData = uData + (baseSize>>2); 

	if(YUV420_To_BGR24(yData, uData, vData, pRGB24, width, height) == false || !pRGB24)
	{
		return NULL;
	}

	IplImage *image = cvCreateImage(cvSize(width, height), 8,3);
	memcpy(image->imageData, pRGB24, imgSize);

	if (!image)
	{
		return NULL;
	}

	delete [] pRGB24;
	return image;
}

int main(int argc, char **argv)
{
	ros::init(argc,argv,"image_raw");
	int ret,nKey;
	int nState = 1;
	int nCount = 1;

	int gray_or_rgb = 0;
	int to_mobile = 0;

	IplImage *pRawImg;
	IplImage *pImg;
	unsigned char *pData;

	int mode = GETBUFFER_MODE;

	// 创建一个相机的node结点 "～"表示私有的NodeHandle
	// create a private camera node 
	ros::NodeHandle nh_private("~");
	nh_private.param("gray_or_rgb", gray_or_rgb, 0);//(key,return value for save，default)
	nh_private.param("to_mobile", to_mobile, 0);

	printf("%d\n",gray_or_rgb);
	if(gray_or_rgb){
		pRawImg = cvCreateImage(cvSize(IMAGE_W, IMAGE_H),IPL_DEPTH_8U,3);
		pImg = cvCreateImage(cvSize(IMAGE_W, IMAGE_H),IPL_DEPTH_8U,3);
		pData  = new unsigned char[IMAGE_W * IMAGE_H * 3];
	} else{
		pRawImg = cvCreateImage(cvSize(IMAGE_W, IMAGE_H),IPL_DEPTH_8U,1);
		pImg = cvCreateImage(cvSize(IMAGE_W, IMAGE_H),IPL_DEPTH_8U,1);
	}
	if(to_mobile) {
		mode |= TRANSFER_MODE;
	}

	ros::NodeHandle node;
	image_transport::ImageTransport transport(node);
    // 注册一个主题image_raw
    // build a topic '/dji_sdk/image_raw'
	image_transport::Publisher image_pub = transport.advertise("/dji_sdk/image_raw", 25);
	// 删除源文件中的这个 不需要publish 相机的参数
	// no need to publish camrea infomation
	// ros::Publisher caminfo_pub = node.advertise<sensor_msgs::CameraInfo>("/dji_sdk/camera_info",1);

	ros::Time time=ros::Time::now();

	cv_bridge::CvImage cvi;


	sensor_msgs::Image im;
	// 这里删掉一大波caminfo 的信息
	// delete caminfo

	// DJI库函数  初始化摄像头
	// DJI API, init camera
	ret = manifold_cam_init(mode);
	if(ret == -1)
	{
		printf("manifold init error \n");
		return -1;
	}

	while(1)
	{
		// 读入图像数据 读一帧
		// read 1 frame of image data
		ret = manifold_cam_read(buffer, &nframe, 1);

		if(ret != -1)
		{

			if(gray_or_rgb)
			{
				// 图像格式转化从 YUV到RGB
				// convert image to RGB
				NV12ToRGB(buffer,pData,IMAGE_W,IMAGE_H);
				memcpy(pRawImg->imageData,pData,FRAME_SIZE);
			}else{
				memcpy(pRawImg->imageData,buffer,FRAME_SIZE/3);
			}
			cvResize(pRawImg,pImg,CV_INTER_LINEAR);

			time=ros::Time::now();
			cvi.header.stamp = time;
			cvi.header.frame_id = "image";
			if(gray_or_rgb){
				cvi.encoding = "bgr8";
			}else{
				cvi.encoding = "mono8";
			}
			cvi.image = pImg;
			// 把Opencv图像转换为ROS图像格式
			// opencv image --> ros image
			cvi.toImageMsg(im);
			// publish image_raw
			image_pub.publish(im);

			ros::spinOnce();
			nCount++;

		}
		else 
			break;
		usleep(1000);
	}
	while(!manifold_cam_exit())
	{
		sleep(1);
	}

	fclose(fp);
	sleep(1);
	return 0;
}
