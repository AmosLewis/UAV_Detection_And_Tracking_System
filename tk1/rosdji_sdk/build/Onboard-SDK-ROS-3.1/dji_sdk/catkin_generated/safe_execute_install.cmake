execute_process(COMMAND "/home/ubuntu/cc/rosdji_sdk/build/Onboard-SDK-ROS-3.1/dji_sdk/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/ubuntu/cc/rosdji_sdk/build/Onboard-SDK-ROS-3.1/dji_sdk/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
