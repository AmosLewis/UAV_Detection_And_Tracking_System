
file(GLOB detectnetConsoleSources *.cpp)
file(GLOB detectnetConsoleIncludes *.h )

find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  image_transport
  nodelet
  roscpp
  rospy
  sensor_msgs
  std_msgs
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES jetson-inference
  CATKIN_DEPENDS cv_bridge image_transport nodelet roscpp rospy sensor_msgs std_msgs
#  DEPENDS system_lib
)

include_directories(
  ${catkin_INCLUDE_DIRS}
 # ${CUDA_INCLUDE_DIRS}
)

find_package(OpenCV REQUIRED)
include_directories(${OpenCV_INCLUDE_DIRS})
cuda_add_executable(detectnet-console ${detectnetConsoleSources})
target_link_libraries(detectnet-console nvcaffe_parser nvinfer jetson-inference ${OpenCV_LIBS} ${catkin_LIBRARIES})
