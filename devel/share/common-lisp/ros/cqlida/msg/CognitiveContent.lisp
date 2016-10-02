; Auto-generated. Do not edit!


(cl:in-package cqlida-msg)


;//! \htmlinclude CognitiveContent.msg.html

(cl:defclass <CognitiveContent> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (elements
    :reader elements
    :initarg :elements
    :type (cl:vector cqlida-msg:KeyValues)
   :initform (cl:make-array 0 :element-type 'cqlida-msg:KeyValues :initial-element (cl:make-instance 'cqlida-msg:KeyValues))))
)

(cl:defclass CognitiveContent (<CognitiveContent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CognitiveContent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CognitiveContent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-msg:<CognitiveContent> is deprecated: use cqlida-msg:CognitiveContent instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CognitiveContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-msg:header-val is deprecated.  Use cqlida-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'elements-val :lambda-list '(m))
(cl:defmethod elements-val ((m <CognitiveContent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-msg:elements-val is deprecated.  Use cqlida-msg:elements instead.")
  (elements m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CognitiveContent>) ostream)
  "Serializes a message object of type '<CognitiveContent>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'elements))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'elements))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CognitiveContent>) istream)
  "Deserializes a message object of type '<CognitiveContent>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'elements) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'elements)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cqlida-msg:KeyValues))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CognitiveContent>)))
  "Returns string type for a message object of type '<CognitiveContent>"
  "cqlida/CognitiveContent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CognitiveContent)))
  "Returns string type for a message object of type 'CognitiveContent"
  "cqlida/CognitiveContent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CognitiveContent>)))
  "Returns md5sum for a message object of type '<CognitiveContent>"
  "83f91efa81b1a0fe4b205d5da835c13b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CognitiveContent)))
  "Returns md5sum for a message object of type 'CognitiveContent"
  "83f91efa81b1a0fe4b205d5da835c13b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CognitiveContent>)))
  "Returns full string definition for message of type '<CognitiveContent>"
  (cl:format cl:nil "Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CognitiveContent)))
  "Returns full string definition for message of type 'CognitiveContent"
  (cl:format cl:nil "Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cqlida/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CognitiveContent>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'elements) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CognitiveContent>))
  "Converts a ROS message object to a list"
  (cl:list 'CognitiveContent
    (cl:cons ':header (header msg))
    (cl:cons ':elements (elements msg))
))
