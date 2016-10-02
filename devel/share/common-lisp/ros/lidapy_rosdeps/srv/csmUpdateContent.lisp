; Auto-generated. Do not edit!


(cl:in-package lidapy_rosdeps-srv)


;//! \htmlinclude csmUpdateContent-request.msg.html

(cl:defclass <csmUpdateContent-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type lidapy_rosdeps-msg:CognitiveContent
    :initform (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent))
   (update
    :reader update
    :initarg :update
    :type lidapy_rosdeps-msg:CognitiveContent
    :initform (cl:make-instance 'lidapy_rosdeps-msg:CognitiveContent)))
)

(cl:defclass csmUpdateContent-request (<csmUpdateContent-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmUpdateContent-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmUpdateContent-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmUpdateContent-request> is deprecated: use lidapy_rosdeps-srv:csmUpdateContent-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <csmUpdateContent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:target-val is deprecated.  Use lidapy_rosdeps-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'update-val :lambda-list '(m))
(cl:defmethod update-val ((m <csmUpdateContent-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:update-val is deprecated.  Use lidapy_rosdeps-srv:update instead.")
  (update m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmUpdateContent-request>) ostream)
  "Serializes a message object of type '<csmUpdateContent-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'update) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmUpdateContent-request>) istream)
  "Deserializes a message object of type '<csmUpdateContent-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'update) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmUpdateContent-request>)))
  "Returns string type for a service object of type '<csmUpdateContent-request>"
  "lidapy_rosdeps/csmUpdateContentRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmUpdateContent-request)))
  "Returns string type for a service object of type 'csmUpdateContent-request"
  "lidapy_rosdeps/csmUpdateContentRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmUpdateContent-request>)))
  "Returns md5sum for a message object of type '<csmUpdateContent-request>"
  "b5c6fc7694e25a71c58a14b8a055ecb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmUpdateContent-request)))
  "Returns md5sum for a message object of type 'csmUpdateContent-request"
  "b5c6fc7694e25a71c58a14b8a055ecb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmUpdateContent-request>)))
  "Returns full string definition for message of type '<csmUpdateContent-request>"
  (cl:format cl:nil "CognitiveContent target~%CognitiveContent update~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmUpdateContent-request)))
  "Returns full string definition for message of type 'csmUpdateContent-request"
  (cl:format cl:nil "CognitiveContent target~%CognitiveContent update~%~%================================================================================~%MSG: lidapy_rosdeps/CognitiveContent~%Header header~%KeyValues[] elements~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmUpdateContent-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'update))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmUpdateContent-request>))
  "Converts a ROS message object to a list"
  (cl:list 'csmUpdateContent-request
    (cl:cons ':target (target msg))
    (cl:cons ':update (update msg))
))
;//! \htmlinclude csmUpdateContent-response.msg.html

(cl:defclass <csmUpdateContent-response> (roslisp-msg-protocol:ros-message)
  ((results
    :reader results
    :initarg :results
    :type (cl:vector lidapy_rosdeps-msg:KeyValues)
   :initform (cl:make-array 0 :element-type 'lidapy_rosdeps-msg:KeyValues :initial-element (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))))
)

(cl:defclass csmUpdateContent-response (<csmUpdateContent-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <csmUpdateContent-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'csmUpdateContent-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lidapy_rosdeps-srv:<csmUpdateContent-response> is deprecated: use lidapy_rosdeps-srv:csmUpdateContent-response instead.")))

(cl:ensure-generic-function 'results-val :lambda-list '(m))
(cl:defmethod results-val ((m <csmUpdateContent-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lidapy_rosdeps-srv:results-val is deprecated.  Use lidapy_rosdeps-srv:results instead.")
  (results m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <csmUpdateContent-response>) ostream)
  "Serializes a message object of type '<csmUpdateContent-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'results))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'results))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <csmUpdateContent-response>) istream)
  "Deserializes a message object of type '<csmUpdateContent-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'results) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'results)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'lidapy_rosdeps-msg:KeyValues))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<csmUpdateContent-response>)))
  "Returns string type for a service object of type '<csmUpdateContent-response>"
  "lidapy_rosdeps/csmUpdateContentResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmUpdateContent-response)))
  "Returns string type for a service object of type 'csmUpdateContent-response"
  "lidapy_rosdeps/csmUpdateContentResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<csmUpdateContent-response>)))
  "Returns md5sum for a message object of type '<csmUpdateContent-response>"
  "b5c6fc7694e25a71c58a14b8a055ecb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'csmUpdateContent-response)))
  "Returns md5sum for a message object of type 'csmUpdateContent-response"
  "b5c6fc7694e25a71c58a14b8a055ecb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<csmUpdateContent-response>)))
  "Returns full string definition for message of type '<csmUpdateContent-response>"
  (cl:format cl:nil "KeyValues[] results~%~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'csmUpdateContent-response)))
  "Returns full string definition for message of type 'csmUpdateContent-response"
  (cl:format cl:nil "KeyValues[] results~%~%~%================================================================================~%MSG: lidapy_rosdeps/KeyValues~%string key~%string[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <csmUpdateContent-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'results) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <csmUpdateContent-response>))
  "Converts a ROS message object to a list"
  (cl:list 'csmUpdateContent-response
    (cl:cons ':results (results msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'csmUpdateContent)))
  'csmUpdateContent-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'csmUpdateContent)))
  'csmUpdateContent-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'csmUpdateContent)))
  "Returns string type for a service object of type '<csmUpdateContent>"
  "lidapy_rosdeps/csmUpdateContent")