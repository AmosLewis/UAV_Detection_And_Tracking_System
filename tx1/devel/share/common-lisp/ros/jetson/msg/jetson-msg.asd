
(cl:in-package :asdf)

(defsystem "jetson-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sendselect" :depends-on ("_package_Sendselect"))
    (:file "_package_Sendselect" :depends-on ("_package"))
    (:file "flage" :depends-on ("_package_flage"))
    (:file "_package_flage" :depends-on ("_package"))
    (:file "rect" :depends-on ("_package_rect"))
    (:file "_package_rect" :depends-on ("_package"))
  ))