;; Auto-generated. Do not edit!


(when (boundp 'cqlida::csmFindContent)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'csmFindContent (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CSMFINDCONTENT")
  (make-package "CQLIDA::CSMFINDCONTENT"))
(unless (find-package "CQLIDA::CSMFINDCONTENTREQUEST")
  (make-package "CQLIDA::CSMFINDCONTENTREQUEST"))
(unless (find-package "CQLIDA::CSMFINDCONTENTRESPONSE")
  (make-package "CQLIDA::CSMFINDCONTENTRESPONSE"))

(in-package "ROS")





(defclass cqlida::csmFindContentRequest
  :super ros::object
  :slots (_filters ))

(defmethod cqlida::csmFindContentRequest
  (:init
   (&key
    ((:filters __filters) (let (r) (dotimes (i 0) (push (instance cqlida::KeyValues :init) r)) r))
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
    ;; cqlida/KeyValues[] _filters
    (apply #'+ (send-all _filters :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/KeyValues[] _filters
     (write-long (length _filters) s)
     (dolist (elem _filters)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/KeyValues[] _filters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _filters (let (r) (dotimes (i n) (push (instance cqlida::KeyValues :init) r)) r))
     (dolist (elem- _filters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::csmFindContentResponse
  :super ros::object
  :slots (_found_content ))

(defmethod cqlida::csmFindContentResponse
  (:init
   (&key
    ((:found_content __found_content) (let (r) (dotimes (i 0) (push (instance cqlida::CognitiveContent :init) r)) r))
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
    ;; cqlida/CognitiveContent[] _found_content
    (apply #'+ (send-all _found_content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent[] _found_content
     (write-long (length _found_content) s)
     (dolist (elem _found_content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent[] _found_content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _found_content (let (r) (dotimes (i n) (push (instance cqlida::CognitiveContent :init) r)) r))
     (dolist (elem- _found_content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::csmFindContent
  :super ros::object
  :slots ())

(setf (get cqlida::csmFindContent :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get cqlida::csmFindContent :datatype-) "cqlida/csmFindContent")
(setf (get cqlida::csmFindContent :request) cqlida::csmFindContentRequest)
(setf (get cqlida::csmFindContent :response) cqlida::csmFindContentResponse)

(defmethod cqlida::csmFindContentRequest
  (:response () (instance cqlida::csmFindContentResponse :init)))

(setf (get cqlida::csmFindContentRequest :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get cqlida::csmFindContentRequest :datatype-) "cqlida/csmFindContentRequest")
(setf (get cqlida::csmFindContentRequest :definition-)
      "cqlida/KeyValues[] filters

================================================================================
MSG: cqlida/KeyValues
string key
string[] values
---
cqlida/CognitiveContent[] found_content


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

(setf (get cqlida::csmFindContentResponse :md5sum-) "d90a18b8ffa9e23fbba9c4f8396a3ed2")
(setf (get cqlida::csmFindContentResponse :datatype-) "cqlida/csmFindContentResponse")
(setf (get cqlida::csmFindContentResponse :definition-)
      "cqlida/KeyValues[] filters

================================================================================
MSG: cqlida/KeyValues
string key
string[] values
---
cqlida/CognitiveContent[] found_content


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



(provide :cqlida/csmFindContent "d90a18b8ffa9e23fbba9c4f8396a3ed2")


