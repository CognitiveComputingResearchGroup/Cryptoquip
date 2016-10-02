; Auto-generated. Do not edit!


(cl:in-package cqlida-srv)


;//! \htmlinclude csmAddContent-request.msg.html

(cl:defclass <csmAddContent-request> (roslisp-msg-protocol:ros-message)
  ((content
    :reader content
    :initarg :content
    :type (cl:vector cqlida-msg:CognitiveContent)
   :initform (cl:make-array 0 :element-type 'cqlida-msg:CognitiveContent :initial-element (cl:make-instance 'cqlida-msg:CognitiveContent))))
)

(cl:defclass csmAddContent-request (<csmAddContent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmAddContent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmAddContent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<csmAddContent-request> is deprecated: use cqlida-srv:csmAddContent-request instead.")))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <csmAddContent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:content-val is deprecated.  Use cqlida-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmAddContent-request>) ostream)
  "Serializes a message object of type '<csmAddContent-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmAddContent-request>) istream)
  "Deserializes a message object of type '<csmAddContent-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'content) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'content)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cqlida-msg:CognitiveContent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmAddContent-request>)))
  "Returns string type for a service object of type '<csmAddContent-request>"
  "cqlida/csmAddContentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmAddContent-request)))
  "Returns string type for a service object of type 'csmAddContent-request"
  "cqlida/csmAddContentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmAddContent-request>)))
  "Returns md5sum for a message object of type '<csmAddContent-request>"
  "c65617913ec357532e90aa89ea8db840")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmAddContent-request)))
  "Returns md5sum for a message object of type 'csmAddContent-request"
  "c65617913ec357532e90aa89ea8db840")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmAddContent-request>)))
  "Returns full string definition for message of type '<csmAddContent-request>"
  (cl:format cl:nil "cqlida/CognitiveContent[] content~%~%================================================================================~%MSG: cqlida/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmAddContent-request)))
  "Returns full string definition for message of type 'csmAddContent-request"
  (cl:format cl:nil "cqlida/CognitiveContent[] content~%~%================================================================================~%MSG: cqlida/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmAddContent-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'content) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmAddContent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'csmAddContent-request
    (cl:cons ':content (content msg))
))
;//! \htmlinclude csmAddContent-response.msg.html

(cl:defclass <csmAddContent-response> (roslisp-msg-protocol:ros-message)
  ((results
    :reader results
    :initarg :results
    :type (cl:vector cqlida-msg:KeyValues)
   :initform (cl:make-array 0 :element-type 'cqlida-msg:KeyValues :initial-element (cl:make-instance 'cqlida-msg:KeyValues))))
)

(cl:defclass csmAddContent-response (<csmAddContent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmAddContent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmAddContent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<csmAddContent-response> is deprecated: use cqlida-srv:csmAddContent-response instead.")))

(cl:ensure-generic-function 'results-val :lambda-list '(m))
(cl:defmethod results-val ((m <csmAddContent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:results-val is deprecated.  Use cqlida-srv:results instead.")
  (results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmAddContent-response>) ostream)
  "Serializes a message object of type '<csmAddContent-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmAddContent-response>) istream)
  "Deserializes a message object of type '<csmAddContent-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cqlida-msg:KeyValues))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmAddContent-response>)))
  "Returns string type for a service object of type '<csmAddContent-response>"
  "cqlida/csmAddContentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmAddContent-response)))
  "Returns string type for a service object of type 'csmAddContent-response"
  "cqlida/csmAddContentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmAddContent-response>)))
  "Returns md5sum for a message object of type '<csmAddContent-response>"
  "c65617913ec357532e90aa89ea8db840")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmAddContent-response)))
  "Returns md5sum for a message object of type 'csmAddContent-response"
  "c65617913ec357532e90aa89ea8db840")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmAddContent-response>)))
  "Returns full string definition for message of type '<csmAddContent-response>"
  (cl:format cl:nil "cqlida/KeyValues[] results~%~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmAddContent-response)))
  "Returns full string definition for message of type 'csmAddContent-response"
  (cl:format cl:nil "cqlida/KeyValues[] results~%~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmAddContent-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmAddContent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'csmAddContent-response
    (cl:cons ':results (results msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'csmAddContent)))
  'csmAddContent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'csmAddContent)))
  'csmAddContent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmAddContent)))
  "Returns string type for a service object of type '<csmAddContent>"
  "cqlida/csmAddContent")