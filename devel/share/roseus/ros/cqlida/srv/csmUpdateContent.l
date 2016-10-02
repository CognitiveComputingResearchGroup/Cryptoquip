;; Auto-generated. Do not edit!


(when (boundp 'cqlida::csmUpdateContent)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'csmUpdateContent (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CSMUPDATECONTENT")
  (make-package "CQLIDA::CSMUPDATECONTENT"))
(unless (find-package "CQLIDA::CSMUPDATECONTENTREQUEST")
  (make-package "CQLIDA::CSMUPDATECONTENTREQUEST"))
(unless (find-package "CQLIDA::CSMUPDATECONTENTRESPONSE")
  (make-package "CQLIDA::CSMUPDATECONTENTRESPONSE"))

(in-package "ROS")





(defclass cqlida::csmUpdateContentRequest
  :super ros::object
  :slots (_target _update ))

(defmethod cqlida::csmUpdateContentRequest
  (:init
   (&key
    ((:target __target) (instance cqlida::CognitiveContent :init))
    ((:update __update) (instance cqlida::CognitiveContent :init))
    )
   (send-super :init)
   (setq _target __target)
   (setq _update __update)
   self)
  (:target
   (&rest __target)
   (if (keywordp (car __target))
       (send* _target __target)
     (progn
       (if __target (setq _target (car __target)))
       _target)))
  (:update
   (&rest __update)
   (if (keywordp (car __update))
       (send* _update __update)
     (progn
       (if __update (setq _update (car __update)))
       _update)))
  (:serialization-length
   ()
   (+
    ;; cqlida/CognitiveContent _target
    (send _target :serialization-length)
    ;; cqlida/CognitiveContent _update
    (send _update :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent _target
       (send _target :serialize s)
     ;; cqlida/CognitiveContent _update
       (send _update :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; cqlida/CognitiveContent _update
     (send _update :deserialize buf ptr-) (incf ptr- (send _update :serialization-length))
   ;;
   self)
  )

(defclass cqlida::csmUpdateContentResponse
  :super ros::object
  :slots (_results ))

(defmethod cqlida::csmUpdateContentResponse
  (:init
   (&key
    ((:results __results) (let (r) (dotimes (i 0) (push (instance cqlida::KeyValues :init) r)) r))
    )
   (send-super :init)
   (setq _results __results)
   self)
  (:results
   (&rest __results)
   (if (keywordp (car __results))
       (send* _results __results)
     (progn
       (if __results (setq _results (car __results)))
       _results)))
  (:serialization-length
   ()
   (+
    ;; cqlida/KeyValues[] _results
    (apply #'+ (send-all _results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/KeyValues[] _results
     (write-long (length _results) s)
     (dolist (elem _results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/KeyValues[] _results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _results (let (r) (dotimes (i n) (push (instance cqlida::KeyValues :init) r)) r))
     (dolist (elem- _results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::csmUpdateContent
  :super ros::object
  :slots ())

(setf (get cqlida::csmUpdateContent :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get cqlida::csmUpdateContent :datatype-) "cqlida/csmUpdateContent")
(setf (get cqlida::csmUpdateContent :request) cqlida::csmUpdateContentRequest)
(setf (get cqlida::csmUpdateContent :response) cqlida::csmUpdateContentResponse)

(defmethod cqlida::csmUpdateContentRequest
  (:response () (instance cqlida::csmUpdateContentResponse :init)))

(setf (get cqlida::csmUpdateContentRequest :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get cqlida::csmUpdateContentRequest :datatype-) "cqlida/csmUpdateContentRequest")
(setf (get cqlida::csmUpdateContentRequest :definition-)
      "cqlida/CognitiveContent target
cqlida/CognitiveContent update

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
---
cqlida/KeyValues[] results


================================================================================
MSG: cqlida/KeyValues
string key
string[] values
")

(setf (get cqlida::csmUpdateContentResponse :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get cqlida::csmUpdateContentResponse :datatype-) "cqlida/csmUpdateContentResponse")
(setf (get cqlida::csmUpdateContentResponse :definition-)
      "cqlida/CognitiveContent target
cqlida/CognitiveContent update

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
---
cqlida/KeyValues[] results


================================================================================
MSG: cqlida/KeyValues
string key
string[] values
")



(provide :cqlida/csmUpdateContent "b5c6fc7694e25a71c58a14b8a055ecb1")


