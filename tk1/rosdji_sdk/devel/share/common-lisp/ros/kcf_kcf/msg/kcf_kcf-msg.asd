
(cl:in-package :asdf)

(defsystem "kcf_kcf-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Sendselect" :depends-on ("_package_Sendselect"))
    (:file "_package_Sendselect" :depends-on ("_package"))
  ))