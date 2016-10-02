; Auto-generated. Do not edit!


(cl:in-package lidapy_rosdeps-srv)


;//! \htmlinclude csmListContent-request.msg.html

(cl:defclass <csmListContent-request> (roslisp-msg-protocol:ros-message)
  ((max_results
    :reader max_results
    :initarg :max_results
    :type cl:integer
    :initform 0))
)

(cl:defclass csmListContent-request (<csmListContent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmListContent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmListContent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmListContent-request> is deprecated: use lidapy_rosdeps-srv:csmListContent-request instead.")))

(cl:ensure-generic-function 'max_results-val :lambda-list '(m))
(cl:defmethod max_results-val ((m <csmListContent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:max_results-val is deprecated.  Use lidapy_rosdeps-srv:max_results instead.")
  (max_results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmListContent-request>) ostream)
  "Serializes a message object of type '<csmListContent-request>"
  (cl:let* ((signed (cl:slot-value msg 'max_results)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmListContent-request>) istream)
  "Deserializes a message object of type '<csmListContent-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_results) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmListContent-request>)))
  "Returns string type for a service object of type '<csmListContent-request>"
  "lidapy_rosdeps/csmListContentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmListContent-request)))
  "Returns string type for a service object of type 'csmListContent-request"
  "lidapy_rosdeps/csmListContentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmListContent-request>)))
  "Returns md5sum for a message object of type '<csmListContent-request>"
  "03e4330075f540fcfbaafbb883d34643")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmListContent-request)))
  "Returns md5sum for a message object of type 'csmListContent-request"
  "03e4330075f540fcfbaafbb883d34643")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmListContent-request>)))
  "Returns full string definition for message of type '<csmListContent-request>"
  (cl:format cl:nil "int32 max_results~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmListContent-request)))
  "Returns full string definition for message of type 'csmListContent-request"
  (cl:format cl:nil "int32 max_results~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmListContent-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmListContent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'csmListContent-request
    (cl:cons ':max_results (max_results msg))
))
;//! \htmlinclude csmListContent-response.msg.html

(cl:defclass <csmListContent-response> (roslisp-msg-protocol:ros-message)
  ((content
    :reader content
    :initarg :content
    :type (cl:vector lidapy_rosdeps-msg:KeyValues)
   :initform (cl:make-array 0 :element-type 'lidapy_rosdeps-msg:KeyValues :initial-element (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))))
)

(cl:defclass csmListContent-response (<csmListContent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmListContent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmListContent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmListContent-response> is deprecated: use lidapy_rosdeps-srv:csmListContent-response instead.")))

(cl:ensure-generic-function 'content-val :lambda-list '(m))
(cl:defmethod content-val ((m <csmListContent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:content-val is deprecated.  Use lidapy_rosdeps-srv:content instead.")
  (content m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmListContent-response>) ostream)
  "Serializes a message object of type '<csmListContent-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'content))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'content))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmListContent-response>) istream)
  "Deserializes a message object of type '<csmListContent-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'content) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'content)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmListContent-response>)))
  "Returns string type for a service object of type '<csmListContent-response>"
  "lidapy_rosdeps/csmListContentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmListContent-response)))
  "Returns string type for a service object of type 'csmListContent-response"
  "lidapy_rosdeps/csmListContentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmListContent-response>)))
  "Returns md5sum for a message object of type '<csmListContent-response>"
  "03e4330075f540fcfbaafbb883d34643")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmListContent-response)))
  "Returns md5sum for a message object of type 'csmListContent-response"
  "03e4330075f540fcfbaafbb883d34643")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmListContent-response>)))
  "Returns full string definition for message of type '<csmListContent-response>"
  (cl:format cl:nil "KeyValues[] content~%~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmListContent-response)))
  "Returns full string definition for message of type 'csmListContent-response"
  (cl:format cl:nil "KeyValues[] content~%~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmListContent-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'content) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmListContent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'csmListContent-response
    (cl:cons ':content (content msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'csmListContent)))
  'csmListContent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'csmListContent)))
  'csmListContent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmListContent)))
  "Returns string type for a service object of type '<csmListContent>"
  "lidapy_rosdeps/csmListContent")