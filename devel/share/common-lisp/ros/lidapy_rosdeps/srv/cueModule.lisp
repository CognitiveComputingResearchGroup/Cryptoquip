; Auto-generated. Do not edit!


(cl:in-package lidapy_rosdeps-srv)


;//! \htmlinclude cueModule-request.msg.html

(cl:defclass <cueModule-request> (roslisp-msg-protocol:ros-message)
  ((cue
    :reader cue
    :initarg :cue
    :type lidapy_rosdeps-msg:CognitiveContent
    :initform (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent)))
)

(cl:defclass cueModule-request (<cueModule-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cueModule-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cueModule-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<cueModule-request> is deprecated: use lidapy_rosdeps-srv:cueModule-request instead.")))

(cl:ensure-generic-function 'cue-val :lambda-list '(m))
(cl:defmethod cue-val ((m <cueModule-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:cue-val is deprecated.  Use lidapy_rosdeps-srv:cue instead.")
  (cue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cueModule-request>) ostream)
  "Serializes a message object of type '<cueModule-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cue) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cueModule-request>) istream)
  "Deserializes a message object of type '<cueModule-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cue) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cueModule-request>)))
  "Returns string type for a service object of type '<cueModule-request>"
  "lidapy_rosdeps/cueModuleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cueModule-request)))
  "Returns string type for a service object of type 'cueModule-request"
  "lidapy_rosdeps/cueModuleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cueModule-request>)))
  "Returns md5sum for a message object of type '<cueModule-request>"
  "09e7477070ec280047cf1b603087f753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cueModule-request)))
  "Returns md5sum for a message object of type 'cueModule-request"
  "09e7477070ec280047cf1b603087f753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cueModule-request>)))
  "Returns full string definition for message of type '<cueModule-request>"
  (cl:format cl:nil "CognitiveContent cue~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cueModule-request)))
  "Returns full string definition for message of type 'cueModule-request"
  (cl:format cl:nil "CognitiveContent cue~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cueModule-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cue))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cueModule-request>))
  "Converts a ROS message object to a list"
  (cl:list 'cueModule-request
    (cl:cons ':cue (cue msg))
))
;//! \htmlinclude cueModule-response.msg.html

(cl:defclass <cueModule-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type (cl:vector lidapy_rosdeps-msg:CognitiveContent)
   :initform (cl:make-array 0 :element-type 'lidapy_rosdeps-msg:CognitiveContent :initial-element (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent))))
)

(cl:defclass cueModule-response (<cueModule-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <cueModule-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'cueModule-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<cueModule-response> is deprecated: use lidapy_rosdeps-srv:cueModule-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <cueModule-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:result-val is deprecated.  Use lidapy_rosdeps-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <cueModule-response>) ostream)
  "Serializes a message object of type '<cueModule-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <cueModule-response>) istream)
  "Deserializes a message object of type '<cueModule-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'result) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'result)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<cueModule-response>)))
  "Returns string type for a service object of type '<cueModule-response>"
  "lidapy_rosdeps/cueModuleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cueModule-response)))
  "Returns string type for a service object of type 'cueModule-response"
  "lidapy_rosdeps/cueModuleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<cueModule-response>)))
  "Returns md5sum for a message object of type '<cueModule-response>"
  "09e7477070ec280047cf1b603087f753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'cueModule-response)))
  "Returns md5sum for a message object of type 'cueModule-response"
  "09e7477070ec280047cf1b603087f753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<cueModule-response>)))
  "Returns full string definition for message of type '<cueModule-response>"
  (cl:format cl:nil "CognitiveContent[] result~%~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'cueModule-response)))
  "Returns full string definition for message of type 'cueModule-response"
  (cl:format cl:nil "CognitiveContent[] result~%~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <cueModule-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'result) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <cueModule-response>))
  "Converts a ROS message object to a list"
  (cl:list 'cueModule-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'cueModule)))
  'cueModule-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'cueModule)))
  'cueModule-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'cueModule)))
  "Returns string type for a service object of type '<cueModule>"
  "lidapy_rosdeps/cueModule")