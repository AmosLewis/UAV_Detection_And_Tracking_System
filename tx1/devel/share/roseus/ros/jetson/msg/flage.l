;; Auto-generated. Do not edit!


(when (boundp 'jetson::flage)
  (if (not (find-package "JETSON"))
    (make-package "JETSON"))
  (shadow 'flage (find-package "JETSON")))
(unless (find-package "JETSON::FLAGE")
  (make-package "JETSON::FLAGE"))

(in-package "ROS")
;;//! \htmlinclude flage.msg.html


(defclass jetson::flage
  :super ros::object
  :slots (_flagTest ))

(defmethod jetson::flage
  (:init
   (&key
    ((:flagTest __flagTest) 0)
    )
   (send-super :init)
   (setq _flagTest (round __flagTest))
   self)
  (:flagTest
   (&optional __flagTest)
   (if __flagTest (setq _flagTest __flagTest)) _flagTest)
  (:serialization-length
   ()
   (+
    ;; int32 _flagTest
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _flagTest
       (write-long _flagTest s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _flagTest
     (setq _flagTest (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jetson::flage :md5sum-) "be229d04a232400d9f235bb6eeba2e7d")
(setf (get jetson::flage :datatype-) "jetson/flage")
(setf (get jetson::flage :definition-)
      "int32 flagTest

")



(provide :jetson/flage "be229d04a232400d9f235bb6eeba2e7d")


