
(cl:in-package :asdf)

(defsystem "vector_msg_test-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add" :depends-on ("_package_add"))
    (:file "_package_add" :depends-on ("_package"))
    (:file "array" :depends-on ("_package_array"))
    (:file "_package_array" :depends-on ("_package"))
  ))