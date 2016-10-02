; Auto-generated. Do not edit!


(cl:in-package cqlida-srv)


;//! \htmlinclude decayModule-request.msg.html

(cl:defclass <decayModule-request> (roslisp-msg-protocol:ros-message)
  ((n
    :reader n
    :initarg :n
    :type cl:fixnum
    :initform 0)
   (strategy
    :reader strategy
    :initarg :strategy
    :type cl:string
    :initform ""))
)

(cl:defclass decayModule-request (<decayModule-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <decayModule-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'decayModule-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<decayModule-request> is deprecated: use cqlida-srv:decayModule-request instead.")))

(cl:ensure-generic-function 'n-val :lambda-list '(m))
(cl:defmethod n-val ((m <decayModule-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:n-val is deprecated.  Use cqlida-srv:n instead.")
  (n m))

(cl:ensure-generic-function 'strategy-val :lambda-list '(m))
(cl:defmethod strategy-val ((m <decayModule-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cqlida-srv:strategy-val is deprecated.  Use cqlida-srv:strategy instead.")
  (strategy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <decayModule-request>) ostream)
  "Serializes a message object of type '<decayModule-request>"
  (cl:let* ((signed (cl:slot-value msg 'n)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'strategy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'strategy))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <decayModule-request>) istream)
  "Deserializes a message object of type '<decayModule-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'n) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'strategy) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'strategy) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<decayModule-request>)))
  "Returns string type for a service object of type '<decayModule-request>"
  "cqlida/decayModuleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'decayModule-request)))
  "Returns string type for a service object of type 'decayModule-request"
  "cqlida/decayModuleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<decayModule-request>)))
  "Returns md5sum for a message object of type '<decayModule-request>"
  "427a4bc49879904c5ed779ad55d5bbc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'decayModule-request)))
  "Returns md5sum for a message object of type 'decayModule-request"
  "427a4bc49879904c5ed779ad55d5bbc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<decayModule-request>)))
  "Returns full string definition for message of type '<decayModule-request>"
  (cl:format cl:nil "int8 n~%string strategy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'decayModule-request)))
  "Returns full string definition for message of type 'decayModule-request"
  (cl:format cl:nil "int8 n~%string strategy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <decayModule-request>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'strategy))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <decayModule-request>))
  "Converts a ROS message object to a list"
  (cl:list 'decayModule-request
    (cl:cons ':n (n msg))
    (cl:cons ':strategy (strategy msg))
))
;//! \htmlinclude decayModule-response.msg.html

(cl:defclass <decayModule-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass decayModule-response (<decayModule-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <decayModule-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'decayModule-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cqlida-srv:<decayModule-response> is deprecated: use cqlida-srv:decayModule-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <decayModule-response>) ostream)
  "Serializes a message object of type '<decayModule-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <decayModule-response>) istream)
  "Deserializes a message object of type '<decayModule-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<decayModule-response>)))
  "Returns string type for a service object of type '<decayModule-response>"
  "cqlida/decayModuleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'decayModule-response)))
  "Returns string type for a service object of type 'decayModule-response"
  "cqlida/decayModuleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<decayModule-response>)))
  "Returns md5sum for a message object of type '<decayModule-response>"
  "427a4bc49879904c5ed779ad55d5bbc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'decayModule-response)))
  "Returns md5sum for a message object of type 'decayModule-response"
  "427a4bc49879904c5ed779ad55d5bbc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<decayModule-response>)))
  "Returns full string definition for message of type '<decayModule-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'decayModule-response)))
  "Returns full string definition for message of type 'decayModule-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <decayModule-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <decayModule-response>))
  "Converts a ROS message object to a list"
  (cl:list 'decayModule-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'decayModule)))
  'decayModule-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'decayModule)))
  'decayModule-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'decayModule)))
  "Returns string type for a service object of type '<decayModule>"
  "cqlida/decayModule")