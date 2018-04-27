/*************************************************************************
	> File Name: src/vector_msg_test_node.cpp
	> Author: 
	> Mail: 
	> Created Time: 2017年04月12日 星期三 10时36分51秒
 ************************************************************************/

#include<iostream>
#include<ros/ros.h>
#include<stdlib.h>
//#include"../../kcf/include/dectrect.h"
#include"include/vector_msg_test/dectrect.h"
#include<algorithm>
#include<vector>
#define MAX 30
#define MIN 10
#define RECTMAX 600
#define RECTMIN 300
using namespace std;
int main(int argc,char** argv){
    ros::init(argc,argv,"vector_msg_test_node");
    ros::NodeHandle nh;

    ros::Publisher pub=nh.advertise<jetson::rect>("jetson/chatter",10);
    srand(time(0));
    int countsize = 0;
	int rect=0;
    ros::Rate rate(10);
		countsize =22;
		rect =10;
    while(ros::ok()){
        //countsize = rand()*(MAX-MIN)+MIN;
        countsize = double(rand())/RAND_MAX*(MAX-MIN) + MIN;
	//	rect = double(rand())/RAND_MAX*(RECTMAX-RECTMIN) + RECTMIN;

        
       //ector<vector_msg_test::array> myarray;
//      vector_msg_test::array testarray;
        jetson::rect myarray;

        for(int i=4;i<countsize;i+=4 ){
            /*myarray.x.push_back(rect);
            myarray.y.push_back(rect);
            myarray.width.push_back(rect/2);
            myarray.height.push_back(rect/2);
			*/
            myarray.x.push_back(rect*i);
            myarray.y.push_back(rect*i);
            myarray.width.push_back(rect*i);
            myarray.heigth.push_back(rect*i);
        }

        //testarray.count = countsize;
        pub.publish(myarray);
        myarray.x.clear();
        myarray.y.clear();
        myarray.width.clear();
        myarray.heigth.clear();
        printf("count = %d\n",countsize);
        
        rate.sleep();
    }



    ROS_INFO_STREAM(countsize);
    return 0;
}
