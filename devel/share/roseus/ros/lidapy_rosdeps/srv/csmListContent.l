;; Auto-generated. Do not edit!


(when (boundp 'lidapy_rosdeps::csmListContent)
  (if (not (find-package "LIDAPY_ROSDEPS"))
    (make-package "LIDAPY_ROSDEPS"))
  (shadow 'csmListContent (find-package "LIDAPY_ROSDEPS")))
(unless (find-package "LIDAPY_ROSDEPS::CSMLISTCONTENT")
  (make-package "LIDAPY_ROSDEPS::CSMLISTCONTENT"))
(unless (find-package "LIDAPY_ROSDEPS::CSMLISTCONTENTREQUEST")
  (make-package "LIDAPY_ROSDEPS::CSMLISTCONTENTREQUEST"))
(unless (find-package "LIDAPY_ROSDEPS::CSMLISTCONTENTRESPONSE")
  (make-package "LIDAPY_ROSDEPS::CSMLISTCONTENTRESPONSE"))

(in-package "ROS")





(defclass lidapy_rosdeps::csmListContentRequest
  :super ros::object
  :slots (_max_results ))

(defmethod lidapy_rosdeps::csmListContentRequest
  (:init
   (&key
    ((:max_results __max_results) 0)
    )
   (send-super :init)
   (setq _max_results (round __max_results))
   self)
  (:max_results
   (&optional __max_results)
   (if __max_results (setq _max_results __max_results)) _max_results)
  (:serialization-length
   ()
   (+
    ;; int32 _max_results
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _max_results
       (write-long _max_results s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _max_results
     (setq _max_results (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmListContentResponse
  :super ros::object
  :slots (_content ))

(defmethod lidapy_rosdeps::csmListContentResponse
  (:init
   (&key
    ((:content __content) (let (r) (dotimes (i 0) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
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
    ;; lidapy_rosdeps/KeyValues[] _content
    (apply #'+ (send-all _content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lidapy_rosdeps/KeyValues[] _content
     (write-long (length _content) s)
     (dolist (elem _content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lidapy_rosdeps/KeyValues[] _content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _content (let (r) (dotimes (i n) (push (instance lidapy_rosdeps::KeyValues :init) r)) r))
     (dolist (elem- _content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass lidapy_rosdeps::csmListContent
  :super ros::object
  :slots ())

(setf (get lidapy_rosdeps::csmListContent :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get lidapy_rosdeps::csmListContent :datatype-) "lidapy_rosdeps/csmListContent")
(setf (get lidapy_rosdeps::csmListContent :request) lidapy_rosdeps::csmListContentRequest)
(setf (get lidapy_rosdeps::csmListContent :response) lidapy_rosdeps::csmListContentResponse)

(defmethod lidapy_rosdeps::csmListContentRequest
  (:response () (instance lidapy_rosdeps::csmListContentResponse :init)))

(setf (get lidapy_rosdeps::csmListContentRequest :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get lidapy_rosdeps::csmListContentRequest :datatype-) "lidapy_rosdeps/csmListContentRequest")
(setf (get lidapy_rosdeps::csmListContentRequest :definition-)
      "int32 max_results
---
KeyValues[] content


================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")

(setf (get lidapy_rosdeps::csmListContentResponse :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get lidapy_rosdeps::csmListContentResponse :datatype-) "lidapy_rosdeps/csmListContentResponse")
(setf (get lidapy_rosdeps::csmListContentResponse :definition-)
      "int32 max_results
---
KeyValues[] content


================================================================================
MSG: lidapy_rosdeps/KeyValues
string key
string[] values
")



(provide :lidapy_rosdeps/csmListContent "03e4330075f540fcfbaafbb883d34643")


