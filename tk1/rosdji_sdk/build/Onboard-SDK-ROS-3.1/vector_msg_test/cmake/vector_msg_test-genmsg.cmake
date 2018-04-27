# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vector_msg_test: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ivector_msg_test:/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vector_msg_test_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg" NAME_WE)
add_custom_target(_vector_msg_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msg_test" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg" ""
)

get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg" NAME_WE)
add_custom_target(_vector_msg_test_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vector_msg_test" "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg" "vector_msg_test/add"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msg_test
)
_generate_msg_cpp(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msg_test
)

### Generating Services

### Generating Module File
_generate_module_cpp(vector_msg_test
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msg_test
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vector_msg_test_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vector_msg_test_generate_messages vector_msg_test_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_cpp _vector_msg_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_cpp _vector_msg_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msg_test_gencpp)
add_dependencies(vector_msg_test_gencpp vector_msg_test_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msg_test_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msg_test
)
_generate_msg_lisp(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msg_test
)

### Generating Services

### Generating Module File
_generate_module_lisp(vector_msg_test
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msg_test
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vector_msg_test_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vector_msg_test_generate_messages vector_msg_test_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_lisp _vector_msg_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_lisp _vector_msg_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msg_test_genlisp)
add_dependencies(vector_msg_test_genlisp vector_msg_test_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msg_test_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test
)
_generate_msg_py(vector_msg_test
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test
)

### Generating Services

### Generating Module File
_generate_module_py(vector_msg_test
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vector_msg_test_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vector_msg_test_generate_messages vector_msg_test_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/add.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_py _vector_msg_test_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/vector_msg_test/msg/array.msg" NAME_WE)
add_dependencies(vector_msg_test_generate_messages_py _vector_msg_test_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vector_msg_test_genpy)
add_dependencies(vector_msg_test_genpy vector_msg_test_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vector_msg_test_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msg_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vector_msg_test
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msg_test_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msg_test)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vector_msg_test
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msg_test_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vector_msg_test
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(vector_msg_test_generate_messages_py std_msgs_generate_messages_py)
