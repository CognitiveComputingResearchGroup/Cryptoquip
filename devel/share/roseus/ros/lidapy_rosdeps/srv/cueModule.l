;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::cueModule)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'cueModule (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CUEMODULE")
  (make-package "LIDAPY_ROSDEPS::CUEMODULE"))
(unless (find-package "LIDAPY_ROSDEPS::CUEMODULEREQUEST")
  (make-package "LIDAPY_ROSDEPS::CUEMODULEREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CUEMODULERESPONSE")
  (make-package "LIDAPY_ROSDEPS::CUEMODULERESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::cueModuleRequest
  :super ros::object
  :slots (_cue ))

(defmethod lidapy_rosdeps::cueModuleRequest
  (:init
   (&key
    ((:cue __cue) (instance lidapy_rosdeps::CognitiveContent :init))
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
    ;; lidapy_rosdeps/CognitiveContent _cue
    (send _cue :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent _cue
       (send _cue :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent _cue
     (send _cue :deserialize buf ptr-) (incf ptr- (send _cue :serialization-length))
   ;;
   self)
  )

(defclass lidapy_rosdeps::cueModuleResponse
  :super ros::object
  :slots (_result ))

(defmethod lidapy_rosdeps::cueModuleResponse
  (:init
   (&key
    ((:result __result) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
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
    ;; lidapy_rosdeps/CognitiveContent[] _result
    (apply #'+ (send-all _result :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/CognitiveContent[] _result
     (write-long (length _result) s)
     (dolist (elem _result)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/CognitiveContent[] _result
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _result (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::CognitiveContent :init) r)) r))
     (dolist (elem- _result)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::cueModule
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::cueModule :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get lidapy_rosdeps::cueModule :datatype-) "lidapy_rosdeps/cueModule")
(setf (get lidapy_rosdeps::cueModule :request) lidapy_rosdeps::cueModuleRequest)
(setf (get lidapy_rosdeps::cueModule :response) lidapy_rosdeps::cueModuleResponse)

(defmethod lidapy_rosdeps::cueModuleRequest
  (:response () (instance lidapy_rosdeps::cueModuleResponse :init)))

(setf (get lidapy_rosdeps::cueModuleRequest :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get lidapy_rosdeps::cueModuleRequest :datatype-) "lidapy_rosdeps/cueModuleRequest")
(setf (get lidapy_rosdeps::cueModuleRequest :definition-)
      "CognitiveContent cue

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
CognitiveContent[] result


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

(setf (get lidapy_rosdeps::cueModuleResponse :md5sum-) "09e7477070ec280047cf1b603087f753")
(setf (get lidapy_rosdeps::cueModuleResponse :datatype-) "lidapy_rosdeps/cueModuleResponse")
(setf (get lidapy_rosdeps::cueModuleResponse :definition-)
      "CognitiveContent cue

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
CognitiveContent[] result


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



(provide :lidapy_rosdeps/cueModule "09e7477070ec280047cf1b603087f753")


