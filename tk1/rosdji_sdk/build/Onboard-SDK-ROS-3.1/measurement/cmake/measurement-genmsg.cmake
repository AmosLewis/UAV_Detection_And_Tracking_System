# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "measurement: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imeasurement:/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(measurement_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg" NAME_WE)
add_custom_target(_measurement_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "measurement" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg" ""
)

get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg" NAME_WE)
add_custom_target(_measurement_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "measurement" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/measurement
)
_generate_msg_cpp(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/measurement
)

### Generating Services

### Generating Module File
_generate_module_cpp(measurement
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/measurement
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(measurement_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(measurement_generate_messages measurement_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg" NAME_WE)
add_dependencies(measurement_generate_messages_cpp _measurement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(measurement_generate_messages_cpp _measurement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(measurement_gencpp)
add_dependencies(measurement_gencpp measurement_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS measurement_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/measurement
)
_generate_msg_lisp(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/measurement
)

### Generating Services

### Generating Module File
_generate_module_lisp(measurement
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/measurement
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(measurement_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(measurement_generate_messages measurement_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg" NAME_WE)
add_dependencies(measurement_generate_messages_lisp _measurement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(measurement_generate_messages_lisp _measurement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(measurement_genlisp)
add_dependencies(measurement_genlisp measurement_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS measurement_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement
)
_generate_msg_py(measurement
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement
)

### Generating Services

### Generating Module File
_generate_module_py(measurement
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(measurement_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(measurement_generate_messages measurement_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Uavpose.msg" NAME_WE)
add_dependencies(measurement_generate_messages_py _measurement_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(measurement_generate_messages_py _measurement_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(measurement_genpy)
add_dependencies(measurement_genpy measurement_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS measurement_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/measurement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/measurement
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(measurement_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/measurement)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/measurement
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(measurement_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/measurement
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(measurement_generate_messages_py std_msgs_generate_messages_py)
