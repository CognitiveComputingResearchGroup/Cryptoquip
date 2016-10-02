
(cl:in-package :asdf)

(defsystem "cqlida-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CognitiveContent" :depends-on ("_package_CognitiveContent"))
    (:file "_package_CognitiveContent" :depends-on ("_package"))
    (:file "KeyValues" :depends-on ("_package_KeyValues"))
    (:file "_package_KeyValues" :depends-on ("_package"))
  ))