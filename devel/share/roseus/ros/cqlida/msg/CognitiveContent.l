;; Auto-generated. Do not edit!


(when (boundp 'cqlida::CognitiveContent)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'CognitiveContent (find-package "CQLIDA")))
(unless (find-package "CQLIDA::COGNITIVECONTENT")
  (make-package "CQLIDA::COGNITIVECONTENT"))

(in-package "ROS")
;;//! \htmlinclude CognitiveContent.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cqlida::CognitiveContent
  :super ros::object
  :slots (_header _elements ))

(defmethod cqlida::CognitiveContent
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:elements __elements) (let (r) (dotimes (i 0) (push (instance cqlida::KeyValues :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _elements __elements)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:elements
   (&rest __elements)
   (if (keywordp (car __elements))
       (send* _elements __elements)
     (progn
       (if __elements (setq _elements (car __elements)))
       _elements)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cqlida/KeyValues[] _elements
    (apply #'+ (send-all _elements :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cqlida/KeyValues[] _elements
     (write-long (length _elements) s)
     (dolist (elem _elements)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cqlida/KeyValues[] _elements
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _elements (let (r) (dotimes (i n) (push (instance cqlida::KeyValues :init) r)) r))
     (dolist (elem- _elements)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cqlida::CognitiveContent :md5sum-) "83f91efa81b1a0fe4b205d5da835c13b")
(setf (get cqlida::CognitiveContent :datatype-) "cqlida/CognitiveContent")
(setf (get cqlida::CognitiveContent :definition-)
      "Header header
KeyValues[] elements

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cqlida/KeyValues
string key
string[] values

")



(provide :cqlida/CognitiveContent "83f91efa81b1a0fe4b205d5da835c13b")


