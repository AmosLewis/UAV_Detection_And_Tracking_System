; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude A3RTK.msg.html

(cl:defclass <A3RTK> (roslisp-msg-protocol:ros-message)
  ((date
    :reader date
    :initarg :date
    :type cl:integer
    :initform 0)
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (longitude_RTK
    :reader longitude_RTK
    :initarg :longitude_RTK
    :type cl:float
    :initform 0.0)
   (latitude_RTK
    :reader latitude_RTK
    :initarg :latitude_RTK
    :type cl:float
    :initform 0.0)
   (height_above_sea_RTK
    :reader height_above_sea_RTK
    :initarg :height_above_sea_RTK
    :type cl:float
    :initform 0.0)
   (velocity_north
    :reader velocity_north
    :initarg :velocity_north
    :type cl:float
    :initform 0.0)
   (velocity_east
    :reader velocity_east
    :initarg :velocity_east
    :type cl:float
    :initform 0.0)
   (velocity_ground
    :reader velocity_ground
    :initarg :velocity_ground
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:fixnum
    :initform 0)
   (position_flag
    :reader position_flag
    :initarg :position_flag
    :type cl:fixnum
    :initform 0)
   (yaw_flag
    :reader yaw_flag
    :initarg :yaw_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass A3RTK (<A3RTK>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <A3RTK>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'A3RTK)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<A3RTK> is deprecated: use dji_sdk-msg:A3RTK instead.")))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:date-val is deprecated.  Use dji_sdk-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:time-val is deprecated.  Use dji_sdk-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'longitude_RTK-val :lambda-list '(m))
(cl:defmethod longitude_RTK-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:longitude_RTK-val is deprecated.  Use dji_sdk-msg:longitude_RTK instead.")
  (longitude_RTK m))

(cl:ensure-generic-function 'latitude_RTK-val :lambda-list '(m))
(cl:defmethod latitude_RTK-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:latitude_RTK-val is deprecated.  Use dji_sdk-msg:latitude_RTK instead.")
  (latitude_RTK m))

(cl:ensure-generic-function 'height_above_sea_RTK-val :lambda-list '(m))
(cl:defmethod height_above_sea_RTK-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:height_above_sea_RTK-val is deprecated.  Use dji_sdk-msg:height_above_sea_RTK instead.")
  (height_above_sea_RTK m))

(cl:ensure-generic-function 'velocity_north-val :lambda-list '(m))
(cl:defmethod velocity_north-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_north-val is deprecated.  Use dji_sdk-msg:velocity_north instead.")
  (velocity_north m))

(cl:ensure-generic-function 'velocity_east-val :lambda-list '(m))
(cl:defmethod velocity_east-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_east-val is deprecated.  Use dji_sdk-msg:velocity_east instead.")
  (velocity_east m))

(cl:ensure-generic-function 'velocity_ground-val :lambda-list '(m))
(cl:defmethod velocity_ground-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_ground-val is deprecated.  Use dji_sdk-msg:velocity_ground instead.")
  (velocity_ground m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yaw-val is deprecated.  Use dji_sdk-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'position_flag-val :lambda-list '(m))
(cl:defmethod position_flag-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:position_flag-val is deprecated.  Use dji_sdk-msg:position_flag instead.")
  (position_flag m))

(cl:ensure-generic-function 'yaw_flag-val :lambda-list '(m))
(cl:defmethod yaw_flag-val ((m <A3RTK>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yaw_flag-val is deprecated.  Use dji_sdk-msg:yaw_flag instead.")
  (yaw_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <A3RTK>) ostream)
  "Serializes a message object of type '<A3RTK>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude_RTK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude_RTK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'height_above_sea_RTK))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_east))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_ground))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <A3RTK>) istream)
  "Deserializes a message object of type '<A3RTK>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_RTK) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude_RTK) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'height_above_sea_RTK) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_north) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_east) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_ground) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position_flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<A3RTK>)))
  "Returns string type for a message object of type '<A3RTK>"
  "dji_sdk/A3RTK")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'A3RTK)))
  "Returns string type for a message object of type 'A3RTK"
  "dji_sdk/A3RTK")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<A3RTK>)))
  "Returns md5sum for a message object of type '<A3RTK>"
  "2f1a4c1310d587c3f79f00f74019a0be")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'A3RTK)))
  "Returns md5sum for a message object of type 'A3RTK"
  "2f1a4c1310d587c3f79f00f74019a0be")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<A3RTK>)))
  "Returns full string definition for message of type '<A3RTK>"
  (cl:format cl:nil "uint32 date~%uint32 time~%float64 longitude_RTK~%float64 latitude_RTK~%float32 height_above_sea_RTK~%float32 velocity_north~%float32 velocity_east~%float32 velocity_ground~%int16 yaw #between baseline and south~%uint8 position_flag~%uint8 yaw_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'A3RTK)))
  "Returns full string definition for message of type 'A3RTK"
  (cl:format cl:nil "uint32 date~%uint32 time~%float64 longitude_RTK~%float64 latitude_RTK~%float32 height_above_sea_RTK~%float32 velocity_north~%float32 velocity_east~%float32 velocity_ground~%int16 yaw #between baseline and south~%uint8 position_flag~%uint8 yaw_flag~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <A3RTK>))
  (cl:+ 0
     4
     4
     8
     8
     4
     4
     4
     4
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <A3RTK>))
  "Converts a ROS message object to a list"
  (cl:list 'A3RTK
    (cl:cons ':date (date msg))
    (cl:cons ':time (time msg))
    (cl:cons ':longitude_RTK (longitude_RTK msg))
    (cl:cons ':latitude_RTK (latitude_RTK msg))
    (cl:cons ':height_above_sea_RTK (height_above_sea_RTK msg))
    (cl:cons ':velocity_north (velocity_north msg))
    (cl:cons ':velocity_east (velocity_east msg))
    (cl:cons ':velocity_ground (velocity_ground msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':position_flag (position_flag msg))
    (cl:cons ':yaw_flag (yaw_flag msg))
))
