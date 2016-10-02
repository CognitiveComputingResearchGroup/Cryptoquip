;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::csmUpdateContent)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'csmUpdateContent (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CSMUPDATECONTENT")
  (make-package "LIDAPY_ROSDEPS::CSMUPDATECONTENT"))
(unless (find-package "LIDAPY_ROSDEPS::CSMUPDATECONTENTREQUEST")
  (make-package "LIDAPY_ROSDEPS::CSMUPDATECONTENTREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CSMUPDATECONTENTRESPONSE")
  (make-package "LIDAPY_ROSDEPS::CSMUPDATECONTENTRESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::csmUpdateContentRequest
  :super ros::object
  :slots (_target _update ))

(defmethod lidapy_rosdeps::csmUpdateContentRequest
  (:init
   (&key
    ((:target __target) (instance lidapy_rosdeps::CognitiveContent :init))
    ((:update __update) (instance lidapy_rosdeps::CognitiveContent :init))
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
    ;; lidapy_rosdeps/CognitiveContent _target
    (send _target :serialization-length)
    ;; lidapy_rosdeps/CognitiveContent _update
    (send _update :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent _target
       (send _target :serialize s)
     ;; lidapy_rosdeps/CognitiveContent _update
       (send _update :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent _target
     (send _target :deserialize buf ptr-) (incf ptr- (send _target :serialization-length))
   ;; lidapy_rosdeps/CognitiveContent _update
     (send _update :deserialize buf ptr-) (incf ptr- (send _update :serialization-length))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmUpdateContentResponse
  :super ros::object
  :slots (_results ))

(defmethod lidapy_rosdeps::csmUpdateContentResponse
  (:init
   (&key
    ((:results __results) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
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
    ;; lidapy_rosdeps/KeyValues[] _results
    (apply #'+ (send-all _results :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/KeyValues[] _results
     (write-long (length _results) s)
     (dolist (elem _results)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/KeyValues[] _results
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _results (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
     (dolist (elem- _results)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmUpdateContent
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::csmUpdateContent :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get lidapy_rosdeps::csmUpdateContent :datatype-) "lidapy_rosdeps/csmUpdateContent")
(setf (get lidapy_rosdeps::csmUpdateContent :request) lidapy_rosdeps::csmUpdateContentRequest)
(setf (get lidapy_rosdeps::csmUpdateContent :response) lidapy_rosdeps::csmUpdateContentResponse)

(defmethod lidapy_rosdeps::csmUpdateContentRequest
  (:response () (instance lidapy_rosdeps::csmUpdateContentResponse :init)))

(setf (get lidapy_rosdeps::csmUpdateContentRequest :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get lidapy_rosdeps::csmUpdateContentRequest :datatype-) "lidapy_rosdeps/csmUpdateContentRequest")
(setf (get lidapy_rosdeps::csmUpdateContentRequest :definition-)
      "CognitiveContent target
CognitiveContent update

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
---
KeyValues[] results


================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")

(setf (get lidapy_rosdeps::csmUpdateContentResponse :md5sum-) "b5c6fc7694e25a71c58a14b8a055ecb1")
(setf (get lidapy_rosdeps::csmUpdateContentResponse :datatype-) "lidapy_rosdeps/csmUpdateContentResponse")
(setf (get lidapy_rosdeps::csmUpdateContentResponse :definition-)
      "CognitiveContent target
CognitiveContent update

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
---
KeyValues[] results


================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")



(provide :lidapy_rosdeps/csmUpdateContent "b5c6fc7694e25a71c58a14b8a055ecb1")


