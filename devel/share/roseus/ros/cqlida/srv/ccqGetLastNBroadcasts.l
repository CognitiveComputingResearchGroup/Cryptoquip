;; Auto-generated. Do not edit!


(when (boundp 'cqlida::ccqGetLastNBroadcasts)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'ccqGetLastNBroadcasts (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CCQGETLASTNBROADCASTS")
  (make-package "CQLIDA::CCQGETLASTNBROADCASTS"))
(unless (find-package "CQLIDA::CCQGETLASTNBROADCASTSREQUEST")
  (make-package "CQLIDA::CCQGETLASTNBROADCASTSREQUEST"))
(unless (find-package "CQLIDA::CCQGETLASTNBROADCASTSRESPONSE")
  (make-package "CQLIDA::CCQGETLASTNBROADCASTSRESPONSE"))

(in-package "ROS")





(defclass cqlida::ccqGetLastNBroadcastsRequest
  :super ros::object
  :slots (_last_n ))

(defmethod cqlida::ccqGetLastNBroadcastsRequest
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

(defclass cqlida::ccqGetLastNBroadcastsResponse
  :super ros::object
  :slots (_items ))

(defmethod cqlida::ccqGetLastNBroadcastsResponse
  (:init
   (&key
    ((:items __items) (let (r) (dotimes (i 0) (push (instance cqlida::CognitiveContent :init) r)) r))
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
    ;; cqlida/CognitiveContent[] _items
    (apply #'+ (send-all _items :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent[] _items
     (write-long (length _items) s)
     (dolist (elem _items)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent[] _items
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _items (let (r) (dotimes (i n) (push (instance cqlida::CognitiveContent :init) r)) r))
     (dolist (elem- _items)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::ccqGetLastNBroadcasts
  :super ros::object
  :slots ())

(setf (get cqlida::ccqGetLastNBroadcasts :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get cqlida::ccqGetLastNBroadcasts :datatype-) "cqlida/ccqGetLastNBroadcasts")
(setf (get cqlida::ccqGetLastNBroadcasts :request) cqlida::ccqGetLastNBroadcastsRequest)
(setf (get cqlida::ccqGetLastNBroadcasts :response) cqlida::ccqGetLastNBroadcastsResponse)

(defmethod cqlida::ccqGetLastNBroadcastsRequest
  (:response () (instance cqlida::ccqGetLastNBroadcastsResponse :init)))

(setf (get cqlida::ccqGetLastNBroadcastsRequest :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get cqlida::ccqGetLastNBroadcastsRequest :datatype-) "cqlida/ccqGetLastNBroadcastsRequest")
(setf (get cqlida::ccqGetLastNBroadcastsRequest :definition-)
      "int8 last_n
---
cqlida/CognitiveContent[] items


================================================================================
MSG: cqlida/CognitiveContent
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
MSG: cqlida/KeyValues
string key
string[] values
")

(setf (get cqlida::ccqGetLastNBroadcastsResponse :md5sum-) "df37d1ef5e33d91e61fb506ae6de16eb")
(setf (get cqlida::ccqGetLastNBroadcastsResponse :datatype-) "cqlida/ccqGetLastNBroadcastsResponse")
(setf (get cqlida::ccqGetLastNBroadcastsResponse :definition-)
      "int8 last_n
---
cqlida/CognitiveContent[] items


================================================================================
MSG: cqlida/CognitiveContent
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
MSG: cqlida/KeyValues
string key
string[] values
")



(provide :cqlida/ccqGetLastNBroadcasts "df37d1ef5e33d91e61fb506ae6de16eb")


