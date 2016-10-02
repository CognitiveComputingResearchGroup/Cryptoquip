; Auto-generated. Do not edit!


(cl:in-package cqlida-srv)


;//! \htmlinclude ccqGetLastNBroadcasts-request.msg.html

(cl:defclass <ccqGetLastNBroadcasts-request> (roslisp-msg-protocol:ros-message)
  ((last_n
    :reader last_n
    :initarg :last_n
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ccqGetLastNBroadcasts-request (<ccqGetLastNBroadcasts-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ccqGetLastNBroadcasts-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ccqGetLastNBroadcasts-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<ccqGetLastNBroadcasts-request> is deprecated: use cqlida-srv:ccqGetLastNBroadcasts-request instead.")))

(cl:ensure-generic-function 'last_n-val :lambda-list '(m))
(cl:defmethod last_n-val ((m <ccqGetLastNBroadcasts-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:last_n-val is deprecated.  Use cqlida-srv:last_n instead.")
  (last_n m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ccqGetLastNBroadcasts-request>) ostream)
  "Serializes a message object of type '<ccqGetLastNBroadcasts-request>"
  (cl:let* ((signed (cl:slot-value msg 'last_n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ccqGetLastNBroadcasts-request>) istream)
  "Deserializes a message object of type '<ccqGetLastNBroadcasts-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_n) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ccqGetLastNBroadcasts-request>)))
  "Returns string type for a service object of type '<ccqGetLastNBroadcasts-request>"
  "cqlida/ccqGetLastNBroadcastsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ccqGetLastNBroadcasts-request)))
  "Returns string type for a service object of type 'ccqGetLastNBroadcasts-request"
  "cqlida/ccqGetLastNBroadcastsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ccqGetLastNBroadcasts-request>)))
  "Returns md5sum for a message object of type '<ccqGetLastNBroadcasts-request>"
  "df37d1ef5e33d91e61fb506ae6de16eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ccqGetLastNBroadcasts-request)))
  "Returns md5sum for a message object of type 'ccqGetLastNBroadcasts-request"
  "df37d1ef5e33d91e61fb506ae6de16eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ccqGetLastNBroadcasts-request>)))
  "Returns full string definition for message of type '<ccqGetLastNBroadcasts-request>"
  (cl:format cl:nil "int8 last_n~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ccqGetLastNBroadcasts-request)))
  "Returns full string definition for message of type 'ccqGetLastNBroadcasts-request"
  (cl:format cl:nil "int8 last_n~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ccqGetLastNBroadcasts-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ccqGetLastNBroadcasts-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ccqGetLastNBroadcasts-request
    (cl:cons ':last_n (last_n msg))
))
;//! \htmlinclude ccqGetLastNBroadcasts-response.msg.html

(cl:defclass <ccqGetLastNBroadcasts-response> (roslisp-msg-protocol:ros-message)
  ((items
    :reader items
    :initarg :items
    :type (cl:vector cqlida-msg:CognitiveContent)
   :initform (cl:make-array 0 :element-type 'cqlida-msg:CognitiveContent :initial-element (cl:make-instance 'cqlida-msg:CognitiveContent))))
)

(cl:defclass ccqGetLastNBroadcasts-response (<ccqGetLastNBroadcasts-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ccqGetLastNBroadcasts-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ccqGetLastNBroadcasts-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<ccqGetLastNBroadcasts-response> is deprecated: use cqlida-srv:ccqGetLastNBroadcasts-response instead.")))

(cl:ensure-generic-function 'items-val :lambda-list '(m))
(cl:defmethod items-val ((m <ccqGetLastNBroadcasts-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:items-val is deprecated.  Use cqlida-srv:items instead.")
  (items m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ccqGetLastNBroadcasts-response>) ostream)
  "Serializes a message object of type '<ccqGetLastNBroadcasts-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'items))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'items))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ccqGetLastNBroadcasts-response>) istream)
  "Deserializes a message object of type '<ccqGetLastNBroadcasts-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'items) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'items)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cqlida-msg:CognitiveContent))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ccqGetLastNBroadcasts-response>)))
  "Returns string type for a service object of type '<ccqGetLastNBroadcasts-response>"
  "cqlida/ccqGetLastNBroadcastsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ccqGetLastNBroadcasts-response)))
  "Returns string type for a service object of type 'ccqGetLastNBroadcasts-response"
  "cqlida/ccqGetLastNBroadcastsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ccqGetLastNBroadcasts-response>)))
  "Returns md5sum for a message object of type '<ccqGetLastNBroadcasts-response>"
  "df37d1ef5e33d91e61fb506ae6de16eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ccqGetLastNBroadcasts-response)))
  "Returns md5sum for a message object of type 'ccqGetLastNBroadcasts-response"
  "df37d1ef5e33d91e61fb506ae6de16eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ccqGetLastNBroadcasts-response>)))
  "Returns full string definition for message of type '<ccqGetLastNBroadcasts-response>"
  (cl:format cl:nil "cqlida/CognitiveContent[] items~%~%~%================================================================================~%MSG: cqlida/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ccqGetLastNBroadcasts-response)))
  "Returns full string definition for message of type 'ccqGetLastNBroadcasts-response"
  (cl:format cl:nil "cqlida/CognitiveContent[] items~%~%~%================================================================================~%MSG: cqlida/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ccqGetLastNBroadcasts-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'items) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ccqGetLastNBroadcasts-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ccqGetLastNBroadcasts-response
    (cl:cons ':items (items msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ccqGetLastNBroadcasts)))
  'ccqGetLastNBroadcasts-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ccqGetLastNBroadcasts)))
  'ccqGetLastNBroadcasts-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ccqGetLastNBroadcasts)))
  "Returns string type for a service object of type '<ccqGetLastNBroadcasts>"
  "cqlida/ccqGetLastNBroadcasts")