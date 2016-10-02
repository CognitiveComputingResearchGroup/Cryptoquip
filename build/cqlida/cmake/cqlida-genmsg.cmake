# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cqlida: 2 messages, 7 services")

set(MSG_I_FLAGS "-Icqlida:/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg;-Istd_msgs:/opt/ros/jade/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cqlida_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" "cqlida/KeyValues:cqlida/CognitiveContent:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" "cqlida/KeyValues:cqlida/CognitiveContent:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" "cqlida/KeyValues"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" "cqlida/KeyValues:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" "cqlida/KeyValues:cqlida/CognitiveContent:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" "cqlida/KeyValues:cqlida/CognitiveContent:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" "cqlida/KeyValues:cqlida/CognitiveContent:std_msgs/Header"
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" ""
)

get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" NAME_WE)
add_custom_target(_cqlida_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cqlida" "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_msg_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)

### Generating Services
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)
_generate_srv_cpp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
)

### Generating Module File
_generate_module_cpp(cqlida
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cqlida_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cqlida_generate_messages cqlida_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_cpp _cqlida_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cqlida_gencpp)
add_dependencies(cqlida_gencpp cqlida_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cqlida_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_msg_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)

### Generating Services
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)
_generate_srv_eus(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
)

### Generating Module File
_generate_module_eus(cqlida
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cqlida_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cqlida_generate_messages cqlida_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_eus _cqlida_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cqlida_geneus)
add_dependencies(cqlida_geneus cqlida_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cqlida_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_msg_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)

### Generating Services
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)
_generate_srv_lisp(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
)

### Generating Module File
_generate_module_lisp(cqlida
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cqlida_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cqlida_generate_messages cqlida_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_lisp _cqlida_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cqlida_genlisp)
add_dependencies(cqlida_genlisp cqlida_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cqlida_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_msg_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)

### Generating Services
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv"
  "${MSG_I_FLAGS}"
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg;/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg;/opt/ros/jade/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)
_generate_srv_py(cqlida
  "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
)

### Generating Module File
_generate_module_py(cqlida
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cqlida_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cqlida_generate_messages cqlida_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmAddContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmFindContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmListContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/CognitiveContent.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/ccqGetLastNBroadcasts.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/csmUpdateContent.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/cueModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/srv/decayModule.srv" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg/KeyValues.msg" NAME_WE)
add_dependencies(cqlida_generate_messages_py _cqlida_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cqlida_genpy)
add_dependencies(cqlida_genpy cqlida_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cqlida_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cqlida
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(cqlida_generate_messages_cpp std_msgs_generate_messages_cpp)

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cqlida
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
add_dependencies(cqlida_generate_messages_eus std_msgs_generate_messages_eus)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cqlida
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(cqlida_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida)
  install(CODE "execute_process(COMMAND \"/home/stephen/anaconda/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cqlida
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(cqlida_generate_messages_py std_msgs_generate_messages_py)
