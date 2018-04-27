;; Auto-generated. Do not edit!


(when (boundp 'jetson::rect)
  (if (not (find-package "JETSON"))
    (make-package "JETSON"))
  (shadow 'rect (find-package "JETSON")))
(unless (find-package "JETSON::RECT")
  (make-package "JETSON::RECT"))

(in-package "ROS")
;;//! \htmlinclude rect.msg.html


(defclass jetson::rect
  :super ros::object
  :slots (_x _y _width _heigth ))

(defmethod jetson::rect
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 0 :initial-element 0 :element-type :integer))
    ((:width __width) (make-array 0 :initial-element 0 :element-type :integer))
    ((:heigth __heigth) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _width __width)
   (setq _heigth __heigth)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:heigth
   (&optional __heigth)
   (if __heigth (setq _heigth __heigth)) _heigth)
  (:serialization-length
   ()
   (+
    ;; int32[] _x
    (* 4    (length _x)) 4
    ;; int32[] _y
    (* 4    (length _y)) 4
    ;; int32[] _width
    (* 4    (length _width)) 4
    ;; int32[] _heigth
    (* 4    (length _heigth)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (write-long (elt _x i) s)
       )
     ;; int32[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (write-long (elt _y i) s)
       )
     ;; int32[] _width
     (write-long (length _width) s)
     (dotimes (i (length _width))
       (write-long (elt _width i) s)
       )
     ;; int32[] _heigth
     (write-long (length _heigth) s)
     (dotimes (i (length _heigth))
       (write-long (elt _heigth i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _width
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _width (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _width i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _heigth
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _heigth (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _heigth i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get jetson::rect :md5sum-) "3bb0086045920a556a6ac0abe680912a")
(setf (get jetson::rect :datatype-) "jetson/rect")
(setf (get jetson::rect :definition-)
      "int32[] x
int32[] y
int32[] width
int32[] heigth

")



(provide :jetson/rect "3bb0086045920a556a6ac0abe680912a")


