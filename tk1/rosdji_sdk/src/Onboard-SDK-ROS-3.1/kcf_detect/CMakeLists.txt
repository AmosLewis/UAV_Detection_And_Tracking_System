cmake_minimum_required(VERSION 2.8.3)
project(kcf_detect)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -Wall -Wextra -pedantic -O2 -Wno-long-long -fno-omit-frame-pointer")

find_package(catkin REQUIRED COMPONENTS
  cv_bridge
  image_transport
  roscpp
  sensor_msgs
  std_msgs
#  dji_sdk
  geometry_msgs
  message_generation
)

find_package(OpenCV REQUIRED)

add_message_files(
		FILES
		Sendselect.msg
		dectrect.msg
		)
generate_messages(
		DEPENDENCIES
		std_msgs
		)

	
if(NOT WIN32)
ADD_DEFINITIONS("-std=c++0x -O3")
endif(NOT WIN32)

catkin_package(
		CATKIN_DEPENDS message_runtime
)

include_directories(
  ${catkin_INCLUDE_DIRS}
#  /dji_sdk_lib
)

link_directories ( ${OpenCV_LIB_DIR} )
MESSAGE(STATUS "OpenCV_LIB_DIR: ${OpenCV_LIB_DIR}")

include_directories ( ${OpenCV_INCLUDE_DIRS} )
MESSAGE(STATUS "OpenCV_INCLUDE_DIRS: ${OpenCV_INCLUDE_DIRS}")

INCLUDE_DIRECTORIES( ${CMAKE_BINARY_DIR}/)
include_directories(${CMAKE_SOURCE_DIR}/src/)

FILE(GLOB_RECURSE sourcefiles "src/*.cpp")

add_executable( kcf_detect_node ${sourcefiles} )
target_link_libraries( kcf_detect_node ${OpenCV_LIBRARIES} ${OpenCV_LIBS} ${catkin_LIBRARIES})

