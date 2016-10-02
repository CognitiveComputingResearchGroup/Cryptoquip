;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::decayModule)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'decayModule (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::DECAYMODULE")
  (make-package "LIDAPY_ROSDEPS::DECAYMODULE"))
(unless (find-package "LIDAPY_ROSDEPS::DECAYMODULEREQUEST")
  (make-package "LIDAPY_ROSDEPS::DECAYMODULEREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::DECAYMODULERESPONSE")
  (make-package "LIDAPY_ROSDEPS::DECAYMODULERESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::decayModuleRequest
  :super ros::object
  :slots (_n _strategy ))

(defmethod lidapy_rosdeps::decayModuleRequest
  (:init
   (&key
    ((:n __n) 0)
    ((:strategy __strategy) "")
    )
   (send-super :init)
   (setq _n (round __n))
   (setq _strategy (string __strategy))
   self)
  (:n
   (&optional __n)
   (if __n (setq _n __n)) _n)
  (:strategy
   (&optional __strategy)
   (if __strategy (setq _strategy __strategy)) _strategy)
  (:serialization-length
   ()
   (+
    ;; int8 _n
    1
    ;; string _strategy
    4 (length _strategy)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _n
       (write-byte _n s)
     ;; string _strategy
       (write-long (length _strategy) s) (princ _strategy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _n
     (setq _n (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _n 127) (setq _n (- _n 256)))
   ;; string _strategy
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _strategy (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass lidapy_rosdeps::decayModuleResponse
  :super ros::object
  :slots ())

(defmethod lidapy_rosdeps::decayModuleResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass lidapy_rosdeps::decayModule
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::decayModule :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get lidapy_rosdeps::decayModule :datatype-) "lidapy_rosdeps/decayModule")
(setf (get lidapy_rosdeps::decayModule :request) lidapy_rosdeps::decayModuleRequest)
(setf (get lidapy_rosdeps::decayModule :response) lidapy_rosdeps::decayModuleResponse)

(defmethod lidapy_rosdeps::decayModuleRequest
  (:response () (instance lidapy_rosdeps::decayModuleResponse :init)))

(setf (get lidapy_rosdeps::decayModuleRequest :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get lidapy_rosdeps::decayModuleRequest :datatype-) "lidapy_rosdeps/decayModuleRequest")
(setf (get lidapy_rosdeps::decayModuleRequest :definition-)
      "int8 n
string strategy
---

")

(setf (get lidapy_rosdeps::decayModuleResponse :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get lidapy_rosdeps::decayModuleResponse :datatype-) "lidapy_rosdeps/decayModuleResponse")
(setf (get lidapy_rosdeps::decayModuleResponse :definition-)
      "int8 n
string strategy
---

")



(provide :lidapy_rosdeps/decayModule "427a4bc49879904c5ed779ad55d5bbc8")


