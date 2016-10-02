# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lidapy_rosdeps: 2 messages, 7 services")

set(MSG_I_FLAGS "-Ilidapy_rosdeps:/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lidapy_rosdeps_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" "lidapy_rosdeps/CognitiveContent:lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" "lidapy_rosdeps/KeyValues"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" "lidapy_rosdeps/CognitiveContent:lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" "lidapy_rosdeps/CognitiveContent:lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" "lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" "lidapy_rosdeps/CognitiveContent:lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" ""
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" "lidapy_rosdeps/CognitiveContent:lidapy_rosdeps/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" NAME_WE)
add_custom_target(_lidapy_rosdeps_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lidapy_rosdeps" "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_msg_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Services
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_cpp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Module File
_generate_module_cpp(lidapy_rosdeps
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lidapy_rosdeps_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lidapy_rosdeps_generate_messages lidapy_rosdeps_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_cpp _lidapy_rosdeps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidapy_rosdeps_gencpp)
add_dependencies(lidapy_rosdeps_gencpp lidapy_rosdeps_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidapy_rosdeps_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_msg_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Services
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_eus(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Module File
_generate_module_eus(lidapy_rosdeps
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lidapy_rosdeps_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lidapy_rosdeps_generate_messages lidapy_rosdeps_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_eus _lidapy_rosdeps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidapy_rosdeps_geneus)
add_dependencies(lidapy_rosdeps_geneus lidapy_rosdeps_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidapy_rosdeps_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_msg_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Services
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_lisp(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Module File
_generate_module_lisp(lidapy_rosdeps
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lidapy_rosdeps_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lidapy_rosdeps_generate_messages lidapy_rosdeps_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_lisp _lidapy_rosdeps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidapy_rosdeps_genlisp)
add_dependencies(lidapy_rosdeps_genlisp lidapy_rosdeps_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidapy_rosdeps_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_msg_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Services
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)
_generate_srv_py(lidapy_rosdeps
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg;/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
)

### Generating Module File
_generate_module_py(lidapy_rosdeps
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lidapy_rosdeps_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lidapy_rosdeps_generate_messages lidapy_rosdeps_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmFindContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmListContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/cueModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/decayModule.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/srv/csmAddContent.srv" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/lidapy_rosdeps/msg/KeyValues.msg" NAME_WE)
add_dependencies(lidapy_rosdeps_generate_messages_py _lidapy_rosdeps_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lidapy_rosdeps_genpy)
add_dependencies(lidapy_rosdeps_genpy lidapy_rosdeps_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lidapy_rosdeps_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lidapy_rosdeps
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(lidapy_rosdeps_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lidapy_rosdeps
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(lidapy_rosdeps_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lidapy_rosdeps
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(lidapy_rosdeps_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps)
  install(CODE "execute_process(COMMAND \"/home/stephen/anaconda/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lidapy_rosdeps
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(lidapy_rosdeps_generate_messages_py std_msgs_generate_messages_py)
