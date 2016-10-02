;; Auto-generated. Do not edit!


(when (boundp 'cqlida::decayModule)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'decayModule (find-package "CQLIDA")))
(unless (find-package "CQLIDA::DECAYMODULE")
  (make-package "CQLIDA::DECAYMODULE"))
(unless (find-package "CQLIDA::DECAYMODULEREQUEST")
  (make-package "CQLIDA::DECAYMODULEREQUEST"))
(unless (find-package "CQLIDA::DECAYMODULERESPONSE")
  (make-package "CQLIDA::DECAYMODULERESPONSE"))

(in-package "ROS")





(defclass cqlida::decayModuleRequest
  :super ros::object
  :slots (_n _strategy ))

(defmethod cqlida::decayModuleRequest
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

(defclass cqlida::decayModuleResponse
  :super ros::object
  :slots ())

(defmethod cqlida::decayModuleResponse
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

(defclass cqlida::decayModule
  :super ros::object
  :slots ())

(setf (get cqlida::decayModule :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get cqlida::decayModule :datatype-) "cqlida/decayModule")
(setf (get cqlida::decayModule :request) cqlida::decayModuleRequest)
(setf (get cqlida::decayModule :response) cqlida::decayModuleResponse)

(defmethod cqlida::decayModuleRequest
  (:response () (instance cqlida::decayModuleResponse :init)))

(setf (get cqlida::decayModuleRequest :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get cqlida::decayModuleRequest :datatype-) "cqlida/decayModuleRequest")
(setf (get cqlida::decayModuleRequest :definition-)
      "int8 n
string strategy
---

")

(setf (get cqlida::decayModuleResponse :md5sum-) "427a4bc49879904c5ed779ad55d5bbc8")
(setf (get cqlida::decayModuleResponse :datatype-) "cqlida/decayModuleResponse")
(setf (get cqlida::decayModuleResponse :definition-)
      "int8 n
string strategy
---

")



(provide :cqlida/decayModule "427a4bc49879904c5ed779ad55d5bbc8")


