/** @file client.cpp
 *  @version 3.1.8
 *  @date July 29th, 2016
 *
 *  @brief
 *  All the exampls for ROS are implemented here. 
 *
 *  @copyright 2016 DJI. All rights reserved.
 *
 */



#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <cstdlib>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include<geometry_msgs/Twist.h>
#include<dji_sdk_lib/DJI_Camera.h>
using namespace DJI::onboardSDK;

int flag=1;
float height=0;
float heightstandard=3.9;
float sub=0;

int main(int argc,char** argv)
{
	
/*	if(flag==1)
	{
		ROS_INFO_STREAM("sleep");
		flag=0;
	}
*/    

	ros::init(argc,argv,"camerandheight");
	ros::NodeHandle nh;
//  ros::Subscriber sub=nh.subscribe("tracker/cmd_vel",1000,&poseMessageReceived);
	

	DJIDrone* drone=new DJIDrone(nh);
//	Flight* flight=new Flight();
//	Camera* camera=new Camera();
//	float pitch=0;

//	ros::Rate rate(1);
//	}


//	if(drone->request_sdk_permission_control())
//	{
		ROS_INFO_STREAM("control sucess");
//		drone->takeoff();
//		sleep(8);
//	}
//	else
//	{
//		ROS_INFO_STREAM("control error ,end ");
//		return 0;
//	}
		while(ros::ok()){

			ros::spinOnce();
			
			ROS_INFO_STREAM("gimal_angle_control");
			drone->gimbal_angle_control(0,-300,0,20);


			height=drone->local_position.z;
			sub=height-heightstandard;
			ROS_INFO_STREAM("height "<<height<<" sub "<<sub);
			
			if(sub>0.1&&sub<-1)
			{
				for(int i=0;i<100;i++)
				{
					drone->local_position_control(0,0,heightstandard,0);
					usleep(20000);
				}
			}

			ROS_INFO_STREAM("local_position_control");	
		}
/*	while(ros::ok())
	{
    
		drone->start_video();
	}*/
//	sleep(10);
//	drone->stop_video();
	
//	sleep(2);

	ROS_INFO_STREAM("end control");	




	
//			ros::spin();
//			return 0;

	
}
