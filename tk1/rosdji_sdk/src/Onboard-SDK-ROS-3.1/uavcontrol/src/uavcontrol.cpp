 /*fywytr  @version 3.1.8
 *  All the exampls for ROS are implemented here. 
 *  @ copyright 2016 DJI. All rights reserved.
 */
// This is a new file for our UAV tracking system.



#include <ros/ros.h>
#include <stdio.h>
#include <dji_sdk/dji_drone.h>
#include <dji_sdk/AttitudeQuaternion.h>
#include <cstdlib>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include<geometry_msgs/Twist.h>
#include<dji_sdk_lib/DJI_Flight.h>
#include <dji_sdk/Gimbal.h>
#include<math.h>
#include<kcf/Sendselect.h>
#include<uavcontrol/Distanceanduavangle.h>
#include<uavcontrol/Uavpose.h>
#include<dji_sdk/LocalPosition.h>
#include<dji_sdk/GlobalPosition.h>
#include<uavcontrol/Sendselect.h>
#include<time.h>
#include"PID.h"
using namespace DJI::onboardSDK;
using namespace std;
using namespace pid;

int controlflag=1;//control flag

float xstart,ystart;
float heightstandard=4;
float dis_gap=50;// default uncertainty
float dis_safe=5;// default safe distance
float dis_safex=3;// default x safe distance
float dis_safey=3;// default y safe distance
// default yaw pitch roll
float gimbal_yaw=0;
float uav_roll=0;
float uav_pitch=0;
float uav_yaw=0;

int loopcount=100;

// camera constant essential matrix from calibration
double u0=627.0;
double v0=333.0;
double ay=769.0;
double ax=776.0;
double PI = 3.1415926535898;


// kalman filter gain
float prevData=0;
float p=10;
float q=0.00008;
float r=0.0008;
float kGain=0;

// combine t-1 state value and t measure value to get a new t value
double Filter(double inData)
{
	p = p+q; 
	kGain = p/(p+r);

	inData = prevData+(kGain*(inData-prevData)); 
	p = (1-kGain)*p;

	prevData = inData;

	return inData; 
}



class Uavcontrol
{
	ros::NodeHandle nh;
	DJIDrone* drone=new DJIDrone(nh);


	ros::Subscriber cmdvel_sub;
	ros::Subscriber gimbal_sub;
	ros::Subscriber velocity_sub;
    ros::Subscriber quaternion_sub;
	ros::Subscriber localposition_sub;
	ros::Subscriber globalposition_sub;

    ros::Publisher Distanceanduavangle_pub=nh.advertise<uavcontrol::Distanceanduavangle>("/mypub/disandangle",100,this);
    ros::Publisher uavpose_pub=nh.advertise<uavcontrol::Uavpose>("/mypub/uavpose",100,this);
	ros::Publisher gimbal_pub = nh.advertise<dji_sdk::Gimbal>("/mypub/gimbal",100,this);
	ros::Publisher velocity_pub = nh.advertise<dji_sdk::Velocity>("/mypub/velocity",100,this);
	ros::Publisher localposition_pub = nh.advertise<dji_sdk::LocalPosition>("/mypub/localposition",100,this);
	ros::Publisher globalposition_pub = nh.advertise<dji_sdk::GlobalPosition>("/mypub/globalposition",100,this);

	
	float flag_first=1;//first run callbackfunc flag
	int angle_cam=0;
	int angle_cam_init=200;
	int count=0;
	int takeofftrue=false;
    PID pid_fw;

public:

	Uavcontrol()
	{

		/***takeoff **/
		if(drone->request_sdk_permission_control())
		{
			ROS_INFO_STREAM("control sucess");

			takeofftrue=drone->takeoff();
			while(takeofftrue==0)
				takeofftrue=drone->takeoff();
			sleep(8);

			xstart=drone->local_position.x;
			ystart=drone->local_position.y;

           	drone->gimbal_angle_control(0,angle_cam_init,0,20);
   			/*          
			for(int i=0;i<5;i++)
			{
			    drone->gimbal_angle_control(0,0,50,20,0);
			    sleep(2);
            }
			  
			for(int i=0;i<5;i++)
			{
				drone->gimbal_angle_control(0,0,-50,20,0);
				sleep(2);
			}	
			*/		
			ROS_INFO_STREAM("xstart:"<<xstart<<" ystart: "<<ystart);

			ROS_INFO_STREAM("first start control");	
			controlflag=1;
		}
		else
		{
			ROS_INFO_STREAM("control error ,end ");
			controlflag=0;
		}



		/**flight to heightstandard**/
		ROS_INFO_STREAM("fight to heightstandard");
		loopcount=600;
		for(int i=0;i<loopcount;i++)
		{
		//	ROS_INFO_STREAM("xstart:"<<start<<" ystart: "<<ystart);
		//	ROS_INFO_STREAM("xstart:"<<i<<" ystart: "<<i);
			drone->attitude_control(0x5B,0,0,heightstandard,0);
        // ROS_INFO_STREAM("local_position: "<<drone->local_position.x<<" ,"<<drone->local_position.y<<" ,"<<drone->local_position.z);
			usleep(20000);
		}

		gimbal_sub=nh.subscribe("/dji_sdk/gimbal",100,&Uavcontrol::gimbal_data,this);
		cmdvel_sub=nh.subscribe("/sendselect/cmd_vel",100,&Uavcontrol::realcontrol,this);
		quaternion_sub=nh.subscribe("/dji_sdk/attitude_quaternion",100,&Uavcontrol::quaternion_data,this);
		velocity_sub=nh.subscribe("/dji_sdk/velocity",100,&Uavcontrol::velocity_data,this);
		localposition_sub=nh.subscribe("/dji_sdk/local_position",100,&Uavcontrol::localposition_data,this);
		globalposition_sub=nh.subscribe("/dji_sdk/global_position",100,&Uavcontrol::globalposition_data,this);
	}

	~Uavcontrol(){}

	void velocity_data(const dji_sdk::Velocity& msg)
	{
		dji_sdk::Velocity my_velocity = msg;
		velocity_pub.publish(my_velocity);
	}

	void localposition_data(const dji_sdk::LocalPosition& msg)
	{
		dji_sdk::LocalPosition my_localposition = msg;
		localposition_pub.publish(my_localposition);
	}

	void globalposition_data(const dji_sdk::GlobalPosition& msg)
	{
		dji_sdk::GlobalPosition my_globalposition = msg;
		globalposition_pub.publish(my_globalposition);
	}


	void gimbal_data(const dji_sdk::Gimbal& msg)
	{
		gimbal_yaw=msg.yaw;
		dji_sdk::Gimbal my_gimbal = msg;

		gimbal_pub.publish(my_gimbal);
	}
	void quaternion_data(const dji_sdk::AttitudeQuaternion& msg)
	{
		uav_roll  = atan2(2.0 * (msg.q3 * msg.q2 + msg.q0 * msg.q1) , 1.0 - 2.0 * (msg.q1 * msg.q1 + msg.q2 * msg.q2))*180/PI;
		uav_pitch = asin(2.0 * (msg.q2 * msg.q0 - msg.q3 * msg.q1))*180/PI;
		uav_yaw   = atan2(2.0 * (msg.q3 * msg.q0 + msg.q1 * msg.q2) , - 1.0 + 2.0 * (msg.q0 * msg.q0 + msg.q1 * msg.q1))*180/PI;
	
        uavcontrol::Uavpose my_uavpose;
        my_uavpose.uav_roll=uav_roll;
        my_uavpose.uav_pitch=uav_pitch;
        my_uavpose.uav_yaw=uav_yaw;

        uavpose_pub.publish(my_uavpose);

	}
	
	void realcontrol(const kcf::Sendselect& msg)//(x,y,width,height)
	{
		count++;
		//	time_t tt=time(NULL);
		//	tm *t=localtime(&tt);
		//	cout<<"time of callbackfunc"<<t->tm_year+1900<<"-"<<t->tm_mon+1<<"-"<<t->tm_mday<<" "<<t->tm_hour<<":"<<t->tm_min<<":"<<t->tm_sec<<endl;
		ROS_INFO_STREAM("callback start: ");
			
		ROS_INFO_STREAM("msg :"<<msg.x<<"  "<<msg.y<<" "<<msg.width<<" "<<msg.height);	
			/**camera control **/	
		ROS_INFO_STREAM("control camera");	
		//	drone->gimbal_angle_control(0,-300,0,20);

		// int Height=drone->local_position.z;
		// maintain angel=30 height = 4m from human foot
		int Height=4;
		int angle=30;
		float xvel=0;
		float yvel=0;
			
		ROS_INFO_STREAM("local_position: x: "<<drone->local_position.x<<" ,y: "<<drone->local_position.y<<" ,z:"<<drone->local_position.z);

		double u=msg.x+msg.width/2;
		double v=msg.y+msg.height;
		
		// calculate distance from pixel--> camera ---> world
		double arc_angle=atan((v0-v)/ay)*180/PI; 
		double dis_y=Height*tan(((90-angle+arc_angle)/180)*PI);
		double angle_ocp=((90-angle+arc_angle)/180)*PI;
		double angle_ccp=atan((v0-v)/ay)*180/PI;
		double dis_x=Height*(u-u0)*cos(atan((v0-v)/ay))/(cos(angle_ocp)*ax);
		double dis_result=sqrt(dis_y*dis_y+dis_x*dis_x);
		double angle_uav=atan(dis_x/dis_y)*180/PI;

	    uavcontrol::Distanceanduavangle my_disandangle;

	    my_disandangle.distance = dis_result;
		my_disandangle.uavangle = angle_uav;
		my_disandangle.dissafe = dis_safe/100;

	    Distanceanduavangle_pub.publish(my_disandangle);

		ROS_INFO_STREAM("u "<<u<<" v "<<v);
		ROS_INFO_STREAM("dis_x "<<dis_x<<" dis_y "<<dis_y<<" result "<<dis_result);
		ROS_INFO_STREAM("arc_angle "<<arc_angle<<" angle_ocp "<<angle_ocp<<" angle_ccp "<<angle_ccp<<" angle_uav "<<angle_uav);


		dis_result=Filter(dis_result);

		ROS_INFO_STREAM("Filter result "<<dis_result);



		dis_x*=100;
		dis_y*=100;
		dis_result*=100;
/*
		if(count==100)
		{	
			angle_cam+=angle_uav;
		
	//		drone->gimbal_angle_control(0,angle_cam_init,angle_cam*10,20);
			drone->gimbal_angle_control(0,angle_cam_init,angle_cam,20);

			ROS_INFO_STREAM("angle_cam "<<angle_cam);

			count=0;
		}

*/

		if(flag_first==1)
		{
			dis_safe=dis_result;
			dis_safex=dis_x;
			dis_safey=dis_y;
			ROS_INFO_STREAM("dis_safe: "<<dis_safe);
			flag_first=0;
		}


		ROS_INFO_STREAM("dis_safe-dis_gap :"<<dis_safe-dis_gap<<"dis_safe-dis_gap :"<<dis_safe+dis_gap);



	    drone->gimbal_angle_control(0,0,angle_uav*10,10,0);
            int yaw_diff=abs(uav_yaw-gimbal_yaw);
			int dis_diff=abs(dis_result-dis_safe);
	    if(uav_yaw<gimbal_yaw &&abs(uav_yaw-gimbal_yaw)>5)
	    {
			if(yaw_diff>10)
			{
				drone->attitude_control(0x5B,0,0,heightstandard,7);
			}
			else
			{
				drone->attitude_control(0x5B,0,0,heightstandard,3);
			}

			ROS_INFO("yaw_right action");
	    }	
        else if(uav_yaw>gimbal_yaw &&abs(uav_yaw-gimbal_yaw)>5)
	    {
			
			if(yaw_diff>10)
			{
				drone->attitude_control(0x5B,0,0,heightstandard,-7);
			}
			else
			{
				drone->attitude_control(0x5B,0,0,heightstandard,-3);
			}
		//	drone->attitude_control(0x5B,0,0,heightstandard,-5);
			ROS_INFO("yaw_left action");
	    }
		//usleep(20000);
      else{

		if(dis_result>=(dis_safe-dis_gap) && dis_result<=(dis_safe+dis_gap))
		{
			ROS_INFO("no action");
			xvel=0;
			yvel=0;


			drone->attitude_control(0x5B,xvel,yvel,heightstandard,0);
	//		usleep(20000);
		}
		else if(dis_result>(dis_safe+dis_gap))
		{
			ROS_INFO("forward action");
			if(dis_diff>100)
				xvel=0.6;
			else
				xvel=0.4;
			yvel=0;
			drone->attitude_control(0x5B,xvel,yvel,heightstandard,0);
	//		usleep(20000);
		}
		else 
		{
			ROS_INFO("backward action");
			if(dis_diff>100)
				xvel=-0.6;
			else
				xvel=-0.4;
			yvel=0;

			drone->attitude_control(0x5B,xvel,yvel,heightstandard,0);
	//		usleep(20000);
		}
		

		ROS_INFO_STREAM("callback end:\n ");
     }
	}
	

};


int main(int argc,char** argv)
{
	ros::init(argc,argv,"uavcontrol");
//	ros::NodeHandle nh;
//  ros::Subscriber sub=nh.subscribe("tracker/cmd_vel",1000,&poseMessageReceived);

	Uavcontrol uavcontrol;
/*
	while(ros::ok())
	{

		ros::spinOnce();
		
	}
*/
	ros::spin();
	return 0;
	
}
