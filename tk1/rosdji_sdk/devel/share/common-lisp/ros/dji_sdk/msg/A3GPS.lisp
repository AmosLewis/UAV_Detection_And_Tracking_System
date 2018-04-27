; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude A3GPS.msg.html

(cl:defclass <A3GPS> (roslisp-msg-protocol:ros-message)
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
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:integer
    :initform 0)
   (latitude
    :reader latitude
    :initarg :latitude
    :type cl:integer
    :initform 0)
   (height_above_sea
    :reader height_above_sea
    :initarg :height_above_sea
    :type cl:integer
    :initform 0)
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
    :initform 0.0))
)

(cl:defclass A3GPS (<A3GPS>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <A3GPS>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'A3GPS)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<A3GPS> is deprecated: use dji_sdk-msg:A3GPS instead.")))

(cl:ensure-generic-function 'date-val :lambda-list '(m))
(cl:defmethod date-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:date-val is deprecated.  Use dji_sdk-msg:date instead.")
  (date m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:time-val is deprecated.  Use dji_sdk-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:longitude-val is deprecated.  Use dji_sdk-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:latitude-val is deprecated.  Use dji_sdk-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'height_above_sea-val :lambda-list '(m))
(cl:defmethod height_above_sea-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:height_above_sea-val is deprecated.  Use dji_sdk-msg:height_above_sea instead.")
  (height_above_sea m))

(cl:ensure-generic-function 'velocity_north-val :lambda-list '(m))
(cl:defmethod velocity_north-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_north-val is deprecated.  Use dji_sdk-msg:velocity_north instead.")
  (velocity_north m))

(cl:ensure-generic-function 'velocity_east-val :lambda-list '(m))
(cl:defmethod velocity_east-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_east-val is deprecated.  Use dji_sdk-msg:velocity_east instead.")
  (velocity_east m))

(cl:ensure-generic-function 'velocity_ground-val :lambda-list '(m))
(cl:defmethod velocity_ground-val ((m <A3GPS>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_ground-val is deprecated.  Use dji_sdk-msg:velocity_ground instead.")
  (velocity_ground m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <A3GPS>) ostream)
  "Serializes a message object of type '<A3GPS>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'date)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'longitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'latitude)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height_above_sea)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <A3GPS>) istream)
  "Deserializes a message object of type '<A3GPS>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'date)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'longitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'latitude) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height_above_sea) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<A3GPS>)))
  "Returns string type for a message object of type '<A3GPS>"
  "dji_sdk/A3GPS")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'A3GPS)))
  "Returns string type for a message object of type 'A3GPS"
  "dji_sdk/A3GPS")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<A3GPS>)))
  "Returns md5sum for a message object of type '<A3GPS>"
  "11eb94934f90318efef991e43caf4ed1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'A3GPS)))
  "Returns md5sum for a message object of type 'A3GPS"
  "11eb94934f90318efef991e43caf4ed1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<A3GPS>)))
  "Returns full string definition for message of type '<A3GPS>"
  (cl:format cl:nil "uint32 date #GPS date~%uint32 time #GPS time~%int32 longitude #unit in degree*10^7~%int32 latitude  #unit in degree*10^7~%int32 height_above_sea #unit in mm ~%float32 velocity_north #unit in cm/s~%float32 velocity_east #unit in cm/s~%float32 velocity_ground #unit in cm/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'A3GPS)))
  "Returns full string definition for message of type 'A3GPS"
  (cl:format cl:nil "uint32 date #GPS date~%uint32 time #GPS time~%int32 longitude #unit in degree*10^7~%int32 latitude  #unit in degree*10^7~%int32 height_above_sea #unit in mm ~%float32 velocity_north #unit in cm/s~%float32 velocity_east #unit in cm/s~%float32 velocity_ground #unit in cm/s~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <A3GPS>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <A3GPS>))
  "Converts a ROS message object to a list"
  (cl:list 'A3GPS
    (cl:cons ':date (date msg))
    (cl:cons ':time (time msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':height_above_sea (height_above_sea msg))
    (cl:cons ':velocity_north (velocity_north msg))
    (cl:cons ':velocity_east (velocity_east msg))
    (cl:cons ':velocity_ground (velocity_ground msg))
))
