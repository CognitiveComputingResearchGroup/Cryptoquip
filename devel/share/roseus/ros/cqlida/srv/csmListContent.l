;; Auto-generated. Do not edit!


(when (boundp 'cqlida::csmListContent)
  (if (not (find-package "CQLIDA"))
    (make-package "CQLIDA"))
  (shadow 'csmListContent (find-package "CQLIDA")))
(unless (find-package "CQLIDA::CSMLISTCONTENT")
  (make-package "CQLIDA::CSMLISTCONTENT"))
(unless (find-package "CQLIDA::CSMLISTCONTENTREQUEST")
  (make-package "CQLIDA::CSMLISTCONTENTREQUEST"))
(unless (find-package "CQLIDA::CSMLISTCONTENTRESPONSE")
  (make-package "CQLIDA::CSMLISTCONTENTRESPONSE"))

(in-package "ROS")





(defclass cqlida::csmListContentRequest
  :super ros::object
  :slots (_max_results ))

(defmethod cqlida::csmListContentRequest
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

(defclass cqlida::csmListContentResponse
  :super ros::object
  :slots (_content ))

(defmethod cqlida::csmListContentResponse
  (:init
   (&key
    ((:content __content) (let (r) (dotimes (i 0) (push (instance cqlida::KeyValues :init) r)) r))
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
    ;; cqlida/KeyValues[] _content
    (apply #'+ (send-all _content :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cqlida/KeyValues[] _content
     (write-long (length _content) s)
     (dolist (elem _content)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cqlida/KeyValues[] _content
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _content (let (r) (dotimes (i n) (push (instance cqlida::KeyValues :init) r)) r))
     (dolist (elem- _content)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cqlida::csmListContent
  :super ros::object
  :slots ())

(setf (get cqlida::csmListContent :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get cqlida::csmListContent :datatype-) "cqlida/csmListContent")
(setf (get cqlida::csmListContent :request) cqlida::csmListContentRequest)
(setf (get cqlida::csmListContent :response) cqlida::csmListContentResponse)

(defmethod cqlida::csmListContentRequest
  (:response () (instance cqlida::csmListContentResponse :init)))

(setf (get cqlida::csmListContentRequest :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get cqlida::csmListContentRequest :datatype-) "cqlida/csmListContentRequest")
(setf (get cqlida::csmListContentRequest :definition-)
      "int32 max_results
---
cqlida/KeyValues[] content


================================================================================
MSG: cqlida/KeyValues
string key
string[] values
")

(setf (get cqlida::csmListContentResponse :md5sum-) "03e4330075f540fcfbaafbb883d34643")
(setf (get cqlida::csmListContentResponse :datatype-) "cqlida/csmListContentResponse")
(setf (get cqlida::csmListContentResponse :definition-)
      "int32 max_results
---
cqlida/KeyValues[] content


================================================================================
MSG: cqlida/KeyValues
string key
string[] values
")



(provide :cqlida/csmListContent "03e4330075f540fcfbaafbb883d34643")


