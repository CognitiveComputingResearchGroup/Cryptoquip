;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::csmAddContent)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'csmAddContent (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CSMADDCONTENT")
  (make-package "LIDAPY_ROSDEPS::CSMADDCONTENT"))
(unless (find-package "LIDAPY_ROSDEPS::CSMADDCONTENTREQUEST")
  (make-package "LIDAPY_ROSDEPS::CSMADDCONTENTREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CSMADDCONTENTRESPONSE")
  (make-package "LIDAPY_ROSDEPS::CSMADDCONTENTRESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::csmAddContentRequest
  :super ros::object
  :slots (_content ))

(defmethod lidapy_rosdeps::csmAddContentRequest
  (:init
   (&key
    ((:content __content) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
    )
   (send-super :init)
   (setq _content __content)
   self)
  (:content
   (&rest __content)
   (if (keywordp (car __content))
       (send* _content __content)
     (progn
       (if __content (setq _content (car __content)))
       _content)))
  (:serialization-length
   ()
   (+
    ;; lidapy_rosdeps/CognitiveContent[] _content
    (apply #'+ (send-all _content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent[] _content
     (write-long (length _content) s)
     (dolist (elem _content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent[] _content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _content (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
     (dolist (elem- _content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmAddContentResponse
  :super ros::object
  :slots (_results ))

(defmethod lidapy_rosdeps::csmAddContentResponse
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

(defclass lidapy_rosdeps::csmAddContent
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::csmAddContent :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get lidapy_rosdeps::csmAddContent :datatype-) "lidapy_rosdeps/csmAddContent")
(setf (get lidapy_rosdeps::csmAddContent :request) lidapy_rosdeps::csmAddContentRequest)
(setf (get lidapy_rosdeps::csmAddContent :response) lidapy_rosdeps::csmAddContentResponse)

(defmethod lidapy_rosdeps::csmAddContentRequest
  (:response () (instance lidapy_rosdeps::csmAddContentResponse :init)))

(setf (get lidapy_rosdeps::csmAddContentRequest :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get lidapy_rosdeps::csmAddContentRequest :datatype-) "lidapy_rosdeps/csmAddContentRequest")
(setf (get lidapy_rosdeps::csmAddContentRequest :definition-)
      "CognitiveContent[] content

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

(setf (get lidapy_rosdeps::csmAddContentResponse :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get lidapy_rosdeps::csmAddContentResponse :datatype-) "lidapy_rosdeps/csmAddContentResponse")
(setf (get lidapy_rosdeps::csmAddContentResponse :definition-)
      "CognitiveContent[] content

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



(provide :lidapy_rosdeps/csmAddContent "c65617913ec357532e90aa89ea8db840")


