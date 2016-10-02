;; Auto-generated. Do not edit!


(when (boundp 'cqlida::csmAddContent)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'csmAddContent (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CSMADDCONTENT")
  (make-package "CQLIDA::CSMADDCONTENT"))
(unless (find-package "CQLIDA::CSMADDCONTENTREQUEST")
  (make-package "CQLIDA::CSMADDCONTENTREQUEST"))
(unless (find-package "CQLIDA::CSMADDCONTENTRESPONSE")
  (make-package "CQLIDA::CSMADDCONTENTRESPONSE"))

(in-package "ROS")





(defclass cqlida::csmAddContentRequest
  :super ros::object
  :slots (_content ))

(defmethod cqlida::csmAddContentRequest
  (:init
   (&key
    ((:content __content) (let (r) (dotimes (i 0) (push (instance cqlida::CognitiveContent :init) r)) r))
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
    ;; cqlida/CognitiveContent[] _content
    (apply #'+ (send-all _content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent[] _content
     (write-long (length _content) s)
     (dolist (elem _content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent[] _content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _content (let (r) (dotimes (i n) (push (instance cqlida::CognitiveContent :init) r)) r))
     (dolist (elem- _content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::csmAddContentResponse
  :super ros::object
  :slots (_results ))

(defmethod cqlida::csmAddContentResponse
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

(defclass cqlida::csmAddContent
  :super ros::object
  :slots ())

(setf (get cqlida::csmAddContent :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get cqlida::csmAddContent :datatype-) "cqlida/csmAddContent")
(setf (get cqlida::csmAddContent :request) cqlida::csmAddContentRequest)
(setf (get cqlida::csmAddContent :response) cqlida::csmAddContentResponse)

(defmethod cqlida::csmAddContentRequest
  (:response () (instance cqlida::csmAddContentResponse :init)))

(setf (get cqlida::csmAddContentRequest :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get cqlida::csmAddContentRequest :datatype-) "cqlida/csmAddContentRequest")
(setf (get cqlida::csmAddContentRequest :definition-)
      "cqlida/CognitiveContent[] content

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

(setf (get cqlida::csmAddContentResponse :md5sum-) "c65617913ec357532e90aa89ea8db840")
(setf (get cqlida::csmAddContentResponse :datatype-) "cqlida/csmAddContentResponse")
(setf (get cqlida::csmAddContentResponse :definition-)
      "cqlida/CognitiveContent[] content

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



(provide :cqlida/csmAddContent "c65617913ec357532e90aa89ea8db840")


