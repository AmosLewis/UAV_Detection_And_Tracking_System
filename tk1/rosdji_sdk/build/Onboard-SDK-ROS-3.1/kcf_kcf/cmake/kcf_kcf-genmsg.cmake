# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kcf_kcf: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikcf_kcf:/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kcf_kcf_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg" NAME_WE)
add_custom_target(_kcf_kcf_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kcf_kcf" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kcf_kcf
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kcf_kcf
)

### Generating Services

### Generating Module File
_generate_module_cpp(kcf_kcf
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kcf_kcf
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kcf_kcf_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kcf_kcf_generate_messages kcf_kcf_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg" NAME_WE)
add_dependencies(kcf_kcf_generate_messages_cpp _kcf_kcf_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kcf_kcf_gencpp)
add_dependencies(kcf_kcf_gencpp kcf_kcf_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kcf_kcf_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kcf_kcf
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kcf_kcf
)

### Generating Services

### Generating Module File
_generate_module_lisp(kcf_kcf
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kcf_kcf
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kcf_kcf_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kcf_kcf_generate_messages kcf_kcf_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg" NAME_WE)
add_dependencies(kcf_kcf_generate_messages_lisp _kcf_kcf_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kcf_kcf_genlisp)
add_dependencies(kcf_kcf_genlisp kcf_kcf_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kcf_kcf_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kcf_kcf
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kcf_kcf
)

### Generating Services

### Generating Module File
_generate_module_py(kcf_kcf
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kcf_kcf
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kcf_kcf_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kcf_kcf_generate_messages kcf_kcf_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/kcf_kcf/msg/Sendselect.msg" NAME_WE)
add_dependencies(kcf_kcf_generate_messages_py _kcf_kcf_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kcf_kcf_genpy)
add_dependencies(kcf_kcf_genpy kcf_kcf_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kcf_kcf_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kcf_kcf)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kcf_kcf
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(kcf_kcf_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kcf_kcf)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kcf_kcf
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(kcf_kcf_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kcf_kcf)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kcf_kcf\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kcf_kcf
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(kcf_kcf_generate_messages_py std_msgs_generate_messages_py)
