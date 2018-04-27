
(cl:in-package :asdf)

(defsystem "measurement-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sendselect" :depends-on ("_package_Sendselect"))
    (:file "_package_Sendselect" :depends-on ("_package"))
    (:file "Distanceanduavangle" :depends-on ("_package_Distanceanduavangle"))
    (:file "_package_Distanceanduavangle" :depends-on ("_package"))
    (:file "Uavpose" :depends-on ("_package_Uavpose"))
    (:file "_package_Uavpose" :depends-on ("_package"))
  ))