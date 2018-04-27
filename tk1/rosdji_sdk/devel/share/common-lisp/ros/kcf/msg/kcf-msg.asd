
(cl:in-package :asdf)

(defsystem "kcf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "dectrect" :depends-on ("_package_dectrect"))
    (:file "_package_dectrect" :depends-on ("_package"))
    (:file "Sendselect" :depends-on ("_package_Sendselect"))
    (:file "_package_Sendselect" :depends-on ("_package"))
  ))