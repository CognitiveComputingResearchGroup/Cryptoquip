;; Auto-generated. Do not edit!


(when (boundp 'cqlida::cueModule)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'cueModule (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CUEMODULE")
  (make-package "CQLIDA::CUEMODULE"))
(unless (find-package "CQLIDA::CUEMODULEREQUEST")
  (make-package "CQLIDA::CUEMODULEREQUEST"))
(unless (find-package "CQLIDA::CUEMODULERESPONSE")
  (make-package "CQLIDA::CUEMODULERESPONSE"))

(in-package "ROS")





(defclass cqlida::cueModuleRequest
  :super ros::object
  :slots (_cue ))

(defmethod cqlida::cueModuleRequest
  (:init
   (&key
    ((:cue __cue) (instance cqlida::CognitiveContent :init))
    )
   (send-super :init)
   (setq _cue __cue)
   self)
  (:cue
   (&rest __cue)
   (if (keywordp (car __cue))
       (send* _cue __cue)
     (progn
       (if __cue (setq _cue (car __cue)))
       _cue)))
  (:serialization-length
   ()
   (+
    ;; cqlida/CognitiveContent _cue
    (send _cue :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent _cue
       (send _cue :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent _cue
     (send _cue :deserialize buf ptr-) (incf ptr- (send _cue :serialization-length))
   ;;
   self)
  )

(defclass cqlida::cueModuleResponse
  :super ros::object
  :slots (_result ))

(defmethod cqlida::cueModuleResponse
  (:init
   (&key
    ((:result __result) (let (r) (dotimes (i 0) (push (instance cqlida::CognitiveContent :init) r)) r))
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&rest __result)
   (if (keywordp (car __result))
       (send* _result __result)
     (progn
       (if __result (setq _result (car __result)))
       _result)))
  (:serialization-length
   ()
   (+
    ;; cqlida/CognitiveContent[] _result
    (apply #'+ (send-all _result :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/CognitiveContent[] _result
     (write-long (length _result) s)
     (dolist (elem _result)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/CognitiveContent[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (let (r) (dotimes (i n) (push (instance cqlida::CognitiveContent :init) r)) r))
     (dolist (elem- _result)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::cueModule
  :super ros::object
  :slots ())

(setf (get cqlida::cueModule :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get cqlida::cueModule :datatype-) "cqlida/cueModule")
(setf (get cqlida::cueModule :request) cqlida::cueModuleRequest)
(setf (get cqlida::cueModule :response) cqlida::cueModuleResponse)

(defmethod cqlida::cueModuleRequest
  (:response () (instance cqlida::cueModuleResponse :init)))

(setf (get cqlida::cueModuleRequest :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get cqlida::cueModuleRequest :datatype-) "cqlida/cueModuleRequest")
(setf (get cqlida::cueModuleRequest :definition-)
      "cqlida/CognitiveContent cue

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
cqlida/CognitiveContent[] result


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

(setf (get cqlida::cueModuleResponse :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get cqlida::cueModuleResponse :datatype-) "cqlida/cueModuleResponse")
(setf (get cqlida::cueModuleResponse :definition-)
      "cqlida/CognitiveContent cue

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
cqlida/CognitiveContent[] result


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



(provide :cqlida/cueModule "09e7477070ec280047cf1b603087f753")


