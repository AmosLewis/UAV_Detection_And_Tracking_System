# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "uavcontrol: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iuavcontrol:/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(uavcontrol_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg" NAME_WE)
add_custom_target(_uavcontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uavcontrol" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg" ""
)

get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg" NAME_WE)
add_custom_target(_uavcontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uavcontrol" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg" ""
)

get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg" NAME_WE)
add_custom_target(_uavcontrol_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "uavcontrol" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol
)
_generate_msg_cpp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol
)
_generate_msg_cpp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol
)

### Generating Services

### Generating Module File
_generate_module_cpp(uavcontrol
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(uavcontrol_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(uavcontrol_generate_messages uavcontrol_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_cpp _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_cpp _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_cpp _uavcontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uavcontrol_gencpp)
add_dependencies(uavcontrol_gencpp uavcontrol_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uavcontrol_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol
)
_generate_msg_lisp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol
)
_generate_msg_lisp(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol
)

### Generating Services

### Generating Module File
_generate_module_lisp(uavcontrol
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(uavcontrol_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(uavcontrol_generate_messages uavcontrol_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_lisp _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_lisp _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_lisp _uavcontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uavcontrol_genlisp)
add_dependencies(uavcontrol_genlisp uavcontrol_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uavcontrol_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol
)
_generate_msg_py(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol
)
_generate_msg_py(uavcontrol
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol
)

### Generating Services

### Generating Module File
_generate_module_py(uavcontrol
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(uavcontrol_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(uavcontrol_generate_messages uavcontrol_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Sendselect.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_py _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Distanceanduavangle.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_py _uavcontrol_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/uavcontrol/msg/Uavpose.msg" NAME_WE)
add_dependencies(uavcontrol_generate_messages_py _uavcontrol_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(uavcontrol_genpy)
add_dependencies(uavcontrol_genpy uavcontrol_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS uavcontrol_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/uavcontrol
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(uavcontrol_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/uavcontrol
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(uavcontrol_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/uavcontrol
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(uavcontrol_generate_messages_py std_msgs_generate_messages_py)
