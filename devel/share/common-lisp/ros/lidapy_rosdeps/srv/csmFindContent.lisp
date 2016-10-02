; Auto-generated. Do not edit!


(cl:in-package lidapy_rosdeps-srv)


;//! \htmlinclude csmFindContent-request.msg.html

(cl:defclass <csmFindContent-request> (roslisp-msg-protocol:ros-message)
  ((filters
    :reader filters
    :initarg :filters
    :type (cl:vector lidapy_rosdeps-msg:KeyValues)
   :initform (cl:make-array 0 :element-type 'lidapy_rosdeps-msg:KeyValues :initial-element (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))))
)

(cl:defclass csmFindContent-request (<csmFindContent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmFindContent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmFindContent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmFindContent-request> is deprecated: use lidapy_rosdeps-srv:csmFindContent-request instead.")))

(cl:ensure-generic-function 'filters-val :lambda-list '(m))
(cl:defmethod filters-val ((m <csmFindContent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:filters-val is deprecated.  Use lidapy_rosdeps-srv:filters instead.")
  (filters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmFindContent-request>) ostream)
  "Serializes a message object of type '<csmFindContent-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'filters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'filters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmFindContent-request>) istream)
  "Deserializes a message object of type '<csmFindContent-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'filters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'filters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmFindContent-request>)))
  "Returns string type for a service object of type '<csmFindContent-request>"
  "lidapy_rosdeps/csmFindContentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmFindContent-request)))
  "Returns string type for a service object of type 'csmFindContent-request"
  "lidapy_rosdeps/csmFindContentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmFindContent-request>)))
  "Returns md5sum for a message object of type '<csmFindContent-request>"
  "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmFindContent-request)))
  "Returns md5sum for a message object of type 'csmFindContent-request"
  "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmFindContent-request>)))
  "Returns full string definition for message of type '<csmFindContent-request>"
  (cl:format cl:nil "KeyValues[] filters~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmFindContent-request)))
  "Returns full string definition for message of type 'csmFindContent-request"
  (cl:format cl:nil "KeyValues[] filters~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmFindContent-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'filters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmFindContent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'csmFindContent-request
    (cl:cons ':filters (filters msg))
))
;//! \htmlinclude csmFindContent-response.msg.html

(cl:defclass <csmFindContent-response> (roslisp-msg-protocol:ros-message)
  ((found_content
    :reader found_content
    :initarg :found_content
    :type (cl:vector lidapy_rosdeps-msg:CognitiveContent)
   :initform (cl:make-array 0 :element-type 'lidapy_rosdeps-msg:CognitiveContent :initial-element (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent))))
)

(cl:defclass csmFindContent-response (<csmFindContent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmFindContent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmFindContent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmFindContent-response> is deprecated: use lidapy_rosdeps-srv:csmFindContent-response instead.")))

(cl:ensure-generic-function 'found_content-val :lambda-list '(m))
(cl:defmethod found_content-val ((m <csmFindContent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:found_content-val is deprecated.  Use lidapy_rosdeps-srv:found_content instead.")
  (found_content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmFindContent-response>) ostream)
  "Serializes a message object of type '<csmFindContent-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'found_content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'found_content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmFindContent-response>) istream)
  "Deserializes a message object of type '<csmFindContent-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'found_content) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'found_content)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmFindContent-response>)))
  "Returns string type for a service object of type '<csmFindContent-response>"
  "lidapy_rosdeps/csmFindContentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmFindContent-response)))
  "Returns string type for a service object of type 'csmFindContent-response"
  "lidapy_rosdeps/csmFindContentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmFindContent-response>)))
  "Returns md5sum for a message object of type '<csmFindContent-response>"
  "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmFindContent-response)))
  "Returns md5sum for a message object of type 'csmFindContent-response"
  "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmFindContent-response>)))
  "Returns full string definition for message of type '<csmFindContent-response>"
  (cl:format cl:nil "CognitiveContent[] found_content~%~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmFindContent-response)))
  "Returns full string definition for message of type 'csmFindContent-response"
  (cl:format cl:nil "CognitiveContent[] found_content~%~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmFindContent-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'found_content) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmFindContent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'csmFindContent-response
    (cl:cons ':found_content (found_content msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'csmFindContent)))
  'csmFindContent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'csmFindContent)))
  'csmFindContent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmFindContent)))
  "Returns string type for a service object of type '<csmFindContent>"
  "lidapy_rosdeps/csmFindContent")