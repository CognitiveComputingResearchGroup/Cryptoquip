
(cl:in-package :asdf)

(defsystem "lidapy_rosdeps-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :lidapy_rosdeps-msg
)
  :components ((:file "_package")
    (:file "csmAddContent" :depends-on ("_package_csmAddContent"))
    (:file "_package_csmAddContent" :depends-on ("_package"))
    (:file "csmListContent" :depends-on ("_package_csmListContent"))
    (:file "_package_csmListContent" :depends-on ("_package"))
    (:file "ccqGetLastNBroadcasts" :depends-on ("_package_ccqGetLastNBroadcasts"))
    (:file "_package_ccqGetLastNBroadcasts" :depends-on ("_package"))
    (:file "decayModule" :depends-on ("_package_decayModule"))
    (:file "_package_decayModule" :depends-on ("_package"))
    (:file "csmFindContent" :depends-on ("_package_csmFindContent"))
    (:file "_package_csmFindContent" :depends-on ("_package"))
    (:file "cueModule" :depends-on ("_package_cueModule"))
    (:file "_package_cueModule" :depends-on ("_package"))
    (:file "csmUpdateContent" :depends-on ("_package_csmUpdateContent"))
    (:file "_package_csmUpdateContent" :depends-on ("_package"))
  ))