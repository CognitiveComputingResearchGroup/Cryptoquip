;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::KeyValues)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'KeyValues (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::KEYVALUES")
  (make-package "LIDAPY_ROSDEPS::KEYVALUES"))

(in-package "ROS")
;;//! \htmlinclude KeyValues.msg.html


(defclass lidapy_rosdeps::KeyValues
  :super ros::object
  :slots (_key _values ))

(defmethod lidapy_rosdeps::KeyValues
  (:init
   (&key
    ((:key __key) "")
    ((:values __values) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _key (string __key))
   (setq _values __values)
   self)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; string _key
    4 (length _key)
    ;; string[] _values
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _values i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get lidapy_rosdeps::KeyValues :md5sum-) "6d196653b1f7a7de793e3c36fccbd8c1")
(setf (get lidapy_rosdeps::KeyValues :datatype-) "lidapy_rosdeps/KeyValues")
(setf (get lidapy_rosdeps::KeyValues :definition-)
      "string key
string[] values

")



(provide :lidapy_rosdeps/KeyValues "6d196653b1f7a7de793e3c36fccbd8c1")


