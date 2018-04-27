;; Auto-generated. Do not edit!


(when (boundp 'jetson::Sendselect)
  (if (not (find-package "JETSON"))
    (make-package "JETSON"))
  (shadow 'Sendselect (find-package "JETSON")))
(unless (find-package "JETSON::SENDSELECT")
  (make-package "JETSON::SENDSELECT"))

(in-package "ROS")
;;//! \htmlinclude Sendselect.msg.html


(defclass jetson::Sendselect
  :super ros::object
  :slots (_p1 _p2 _p3 _p4 ))

(defmethod jetson::Sendselect
  (:init
   (&key
    ((:p1 __p1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:p2 __p2) (make-array 0 :initial-element 0 :element-type :integer))
    ((:p3 __p3) (make-array 0 :initial-element 0 :element-type :integer))
    ((:p4 __p4) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _p1 __p1)
   (setq _p2 __p2)
   (setq _p3 __p3)
   (setq _p4 __p4)
   self)
  (:p1
   (&optional __p1)
   (if __p1 (setq _p1 __p1)) _p1)
  (:p2
   (&optional __p2)
   (if __p2 (setq _p2 __p2)) _p2)
  (:p3
   (&optional __p3)
   (if __p3 (setq _p3 __p3)) _p3)
  (:p4
   (&optional __p4)
   (if __p4 (setq _p4 __p4)) _p4)
  (:serialization-length
   ()
   (+
    ;; int32[] _p1
    (* 4    (length _p1)) 4
    ;; int32[] _p2
    (* 4    (length _p2)) 4
    ;; int32[] _p3
    (* 4    (length _p3)) 4
    ;; int32[] _p4
    (* 4    (length _p4)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _p1
     (write-long (length _p1) s)
     (dotimes (i (length _p1))
       (write-long (elt _p1 i) s)
       )
     ;; int32[] _p2
     (write-long (length _p2) s)
     (dotimes (i (length _p2))
       (write-long (elt _p2 i) s)
       )
     ;; int32[] _p3
     (write-long (length _p3) s)
     (dotimes (i (length _p3))
       (write-long (elt _p3 i) s)
       )
     ;; int32[] _p4
     (write-long (length _p4) s)
     (dotimes (i (length _p4))
       (write-long (elt _p4 i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _p1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _p1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _p2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _p2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _p3
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p3 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _p3 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _p4
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _p4 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _p4 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get jetson::Sendselect :md5sum-) "8b5268e6173b27a274f80ce71e47b82b")
(setf (get jetson::Sendselect :datatype-) "jetson/Sendselect")
(setf (get jetson::Sendselect :definition-)
      "int32[] p1
int32[] p2
int32[] p3
int32[] p4

")



(provide :jetson/Sendselect "8b5268e6173b27a274f80ce71e47b82b")


