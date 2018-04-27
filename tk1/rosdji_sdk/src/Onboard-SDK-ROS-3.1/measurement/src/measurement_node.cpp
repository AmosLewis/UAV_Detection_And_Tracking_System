/*************************************************************************
	> File Name: allsubscibe.cpp
	> Author: 
	> Mail: 
	> Created Time: 2017年03月10日 星期五 14时00分33秒
 ************************************************************************/

#include <iostream>
#include <ros/ros.h>
#include <uavcontrol/Distanceanduavangle.h>
#include <uavcontrol/Uavpose.h>
#include <dji_sdk/Velocity.h>
#include <dji_sdk/LocalPosition.h>
#include <dji_sdk/GlobalPosition.h>
#include <dji_sdk/Gimbal.h>
//#define PI 3.14
using namespace std;
float uav_roll=0;
float uav_pitch=0;
float uav_yaw=0;

/*
void quaternion_data(const dji_sdk::AttitudeQuaternion& msg)
{
	 uav_roll  = atan2(2.0 * (msg.q3 * msg.q2 + msg.q0 * msg.q1) , 1.0 - 2.0 * (msg.q1 * msg.q1 + msg.q2 * msg.q2))*180/PI;
	 uav_pitch = asin(2.0 * (msg.q2 * msg.q0 - msg.q3 * msg.q1))*180/PI;
	 uav_yaw   = atan2(2.0 * (msg.q3 * msg.q0 + msg.q1 * msg.q2) , - 1.0 + 2.0 * (msg.q0 * msg.q0 + msg.q1 * msg.q1))*180/PI;
}
*/

void distandanglehandle(const uavcontrol::Distanceanduavangle& msg){}


void uavposehandle(const uavcontrol::Uavpose& msg){}


void velocityhandle(const dji_sdk::Velocity& msg)
{
//	ROS_INFO_STREAM("vx="<<msg.vx<<" vy="<<msg.vy<<" vz="<<msg.vz);
}

void gimbalhandle(const dji_sdk::Gimbal& msg)
{
}


void localpositionhandle(const dji_sdk::LocalPosition& msg)
{
//	ROS_INFO_STREAM("localx="<<msg.x<<" localy="<<msg.y<<" localz="<<msg.z);
}

void globalpositionhandle(const dji_sdk::GlobalPosition& msg)
{
}


int main(int argc,char** argv){
    ros::init(argc,argv,"measurement_node");
    ros::NodeHandle nh;
    ros::Subscriber Distanceanduavangle_sub=nh.subscribe("/mypub/distandangle",100,&distandanglehandle);
 //   ros::Subscriber quaternion_sub=nh.subscribe("/dji_sdk/attitude_quaternion",100,&quaternion_data);
    ros::Subscriber Uavpose_sub=nh.subscribe("/mypub/uavpose",100,&uavposehandle);

    ros::Subscriber velocity_sub=nh.subscribe("/mypub/velocity",100,&velocityhandle);
    ros::Subscriber localposition_sub=nh.subscribe("/mypub/localposition",100,&localpositionhandle);
    ros::Subscriber globalposition_sub=nh.subscribe("/mypub/globalposition",100,&globalpositionhandle);

	ros::Subscriber gimbal_sub=nh.subscribe("/mypub/gimbal",100,&gimbalhandle);


    ros::spin();
    return 0;

}

