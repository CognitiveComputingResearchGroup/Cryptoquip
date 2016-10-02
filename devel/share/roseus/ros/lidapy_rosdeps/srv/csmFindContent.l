;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::csmFindContent)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'csmFindContent (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CSMFINDCONTENT")
  (make-package "LIDAPY_ROSDEPS::CSMFINDCONTENT"))
(unless (find-package "LIDAPY_ROSDEPS::CSMFINDCONTENTREQUEST")
  (make-package "LIDAPY_ROSDEPS::CSMFINDCONTENTREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CSMFINDCONTENTRESPONSE")
  (make-package "LIDAPY_ROSDEPS::CSMFINDCONTENTRESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::csmFindContentRequest
  :super ros::object
  :slots (_filters ))

(defmethod lidapy_rosdeps::csmFindContentRequest
  (:init
   (&key
    ((:filters __filters) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
    )
   (send-super :init)
   (setq _filters __filters)
   self)
  (:filters
   (&rest __filters)
   (if (keywordp (car __filters))
       (send* _filters __filters)
     (progn
       (if __filters (setq _filters (car __filters)))
       _filters)))
  (:serialization-length
   ()
   (+
    ;; lidapy_rosdeps/KeyValues[] _filters
    (apply #'+ (send-all _filters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/KeyValues[] _filters
     (write-long (length _filters) s)
     (dolist (elem _filters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/KeyValues[] _filters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _filters (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
     (dolist (elem- _filters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmFindContentResponse
  :super ros::object
  :slots (_found_content ))

(defmethod lidapy_rosdeps::csmFindContentResponse
  (:init
   (&key
    ((:found_content __found_content) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
    )
   (send-super :init)
   (setq _found_content __found_content)
   self)
  (:found_content
   (&rest __found_content)
   (if (keywordp (car __found_content))
       (send* _found_content __found_content)
     (progn
       (if __found_content (setq _found_content (car __found_content)))
       _found_content)))
  (:serialization-length
   ()
   (+
    ;; lidapy_rosdeps/CognitiveContent[] _found_content
    (apply #'+ (send-all _found_content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent[] _found_content
     (write-long (length _found_content) s)
     (dolist (elem _found_content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent[] _found_content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _found_content (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
     (dolist (elem- _found_content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmFindContent
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::csmFindContent :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get lidapy_rosdeps::csmFindContent :datatype-) "lidapy_rosdeps/csmFindContent")
(setf (get lidapy_rosdeps::csmFindContent :request) lidapy_rosdeps::csmFindContentRequest)
(setf (get lidapy_rosdeps::csmFindContent :response) lidapy_rosdeps::csmFindContentResponse)

(defmethod lidapy_rosdeps::csmFindContentRequest
  (:response () (instance lidapy_rosdeps::csmFindContentResponse :init)))

(setf (get lidapy_rosdeps::csmFindContentRequest :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get lidapy_rosdeps::csmFindContentRequest :datatype-) "lidapy_rosdeps/csmFindContentRequest")
(setf (get lidapy_rosdeps::csmFindContentRequest :definition-)
      "KeyValues[] filters

================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
---
CognitiveContent[] found_content


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

(setf (get lidapy_rosdeps::csmFindContentResponse :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get lidapy_rosdeps::csmFindContentResponse :datatype-) "lidapy_rosdeps/csmFindContentResponse")
(setf (get lidapy_rosdeps::csmFindContentResponse :definition-)
      "KeyValues[] filters

================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
---
CognitiveContent[] found_content


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



(provide :lidapy_rosdeps/csmFindContent "d90a18b8ffa9e23fbba9c4f8396a3ed2")


