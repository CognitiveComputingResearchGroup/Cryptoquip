;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::ccqGetLastNBroadcasts)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'ccqGetLastNBroadcasts (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTS")
  (make-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTS"))
(unless (find-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTSREQUEST")
  (make-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTSREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTSRESPONSE")
  (make-package "LIDAPY_ROSDEPS::CCQGETLASTNBROADCASTSRESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::ccqGetLastNBroadcastsRequest
  :super ros::object
  :slots (_last_n ))

(defmethod lidapy_rosdeps::ccqGetLastNBroadcastsRequest
  (:init
   (&key
    ((:last_n __last_n) 0)
    )
   (send-super :init)
   (setq _last_n (round __last_n))
   self)
  (:last_n
   (&optional __last_n)
   (if __last_n (setq _last_n __last_n)) _last_n)
  (:serialization-length
   ()
   (+
    ;; int8 _last_n
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _last_n
       (write-byte _last_n s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _last_n
     (setq _last_n (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _last_n 127) (setq _last_n (- _last_n 256)))
   ;;
   self)
  )

(defclass lidapy_rosdeps::ccqGetLastNBroadcastsResponse
  :super ros::object
  :slots (_items ))

(defmethod lidapy_rosdeps::ccqGetLastNBroadcastsResponse
  (:init
   (&key
    ((:items __items) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
    )
   (send-super :init)
   (setq _items __items)
   self)
  (:items
   (&rest __items)
   (if (keywordp (car __items))
       (send* _items __items)
     (progn
       (if __items (setq _items (car __items)))
       _items)))
  (:serialization-length
   ()
   (+
    ;; lidapy_rosdeps/CognitiveContent[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::ccqGetLastNBroadcasts
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::ccqGetLastNBroadcasts :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcasts :datatype-) "lidapy_rosdeps/ccqGetLastNBroadcasts")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcasts :request) lidapy_rosdeps::ccqGetLastNBroadcastsRequest)
(setf (get lidapy_rosdeps::ccqGetLastNBroadcasts :response) lidapy_rosdeps::ccqGetLastNBroadcastsResponse)

(defmethod lidapy_rosdeps::ccqGetLastNBroadcastsRequest
  (:response () (instance lidapy_rosdeps::ccqGetLastNBroadcastsResponse :init)))

(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsRequest :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsRequest :datatype-) "lidapy_rosdeps/ccqGetLastNBroadcastsRequest")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsRequest :definition-)
      "int8 last_n
---
CognitiveContent[] items


================================================================================
MSG: lidapy_rosdeps/CognitiveContent
Header header
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
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")

(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsResponse :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsResponse :datatype-) "lidapy_rosdeps/ccqGetLastNBroadcastsResponse")
(setf (get lidapy_rosdeps::ccqGetLastNBroadcastsResponse :definition-)
      "int8 last_n
---
CognitiveContent[] items


================================================================================
MSG: lidapy_rosdeps/CognitiveContent
Header header
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
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")



(provide :lidapy_rosdeps/ccqGetLastNBroadcasts "df37d1ef5e33d91e61fb506ae6de16eb")


