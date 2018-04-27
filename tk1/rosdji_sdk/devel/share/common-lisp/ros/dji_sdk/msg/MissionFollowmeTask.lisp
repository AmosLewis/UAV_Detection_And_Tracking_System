; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionFollowmeTask.msg.html

(cl:defclass <MissionFollowmeTask> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (yaw_mode
    :reader yaw_mode
    :initarg :yaw_mode
    :type cl:fixnum
    :initform 0)
   (initial_latitude
    :reader initial_latitude
    :initarg :initial_latitude
    :type cl:float
    :initform 0.0)
   (initial_longitude
    :reader initial_longitude
    :initarg :initial_longitude
    :type cl:float
    :initform 0.0)
   (initial_altitude
    :reader initial_altitude
    :initarg :initial_altitude
    :type cl:fixnum
    :initform 0)
   (sensitivity
    :reader sensitivity
    :initarg :sensitivity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionFollowmeTask (<MissionFollowmeTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFollowmeTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFollowmeTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionFollowmeTask> is deprecated: use dji_sdk-msg:MissionFollowmeTask instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mode-val is deprecated.  Use dji_sdk-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'yaw_mode-val :lambda-list '(m))
(cl:defmethod yaw_mode-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yaw_mode-val is deprecated.  Use dji_sdk-msg:yaw_mode instead.")
  (yaw_mode m))

(cl:ensure-generic-function 'initial_latitude-val :lambda-list '(m))
(cl:defmethod initial_latitude-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:initial_latitude-val is deprecated.  Use dji_sdk-msg:initial_latitude instead.")
  (initial_latitude m))

(cl:ensure-generic-function 'initial_longitude-val :lambda-list '(m))
(cl:defmethod initial_longitude-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:initial_longitude-val is deprecated.  Use dji_sdk-msg:initial_longitude instead.")
  (initial_longitude m))

(cl:ensure-generic-function 'initial_altitude-val :lambda-list '(m))
(cl:defmethod initial_altitude-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:initial_altitude-val is deprecated.  Use dji_sdk-msg:initial_altitude instead.")
  (initial_altitude m))

(cl:ensure-generic-function 'sensitivity-val :lambda-list '(m))
(cl:defmethod sensitivity-val ((m <MissionFollowmeTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sensitivity-val is deprecated.  Use dji_sdk-msg:sensitivity instead.")
  (sensitivity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFollowmeTask>) ostream)
  "Serializes a message object of type '<MissionFollowmeTask>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'initial_latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'initial_longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'initial_altitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'initial_altitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensitivity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFollowmeTask>) istream)
  "Deserializes a message object of type '<MissionFollowmeTask>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'initial_longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'initial_altitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'initial_altitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sensitivity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFollowmeTask>)))
  "Returns string type for a message object of type '<MissionFollowmeTask>"
  "dji_sdk/MissionFollowmeTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFollowmeTask)))
  "Returns string type for a message object of type 'MissionFollowmeTask"
  "dji_sdk/MissionFollowmeTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFollowmeTask>)))
  "Returns md5sum for a message object of type '<MissionFollowmeTask>"
  "0b5547386d29daca9e6c32595ec4ca50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFollowmeTask)))
  "Returns md5sum for a message object of type 'MissionFollowmeTask"
  "0b5547386d29daca9e6c32595ec4ca50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFollowmeTask>)))
  "Returns full string definition for message of type '<MissionFollowmeTask>"
  (cl:format cl:nil "uint8 mode~%uint8 yaw_mode~%float64 initial_latitude~%float64 initial_longitude~%uint16 initial_altitude~%uint8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFollowmeTask)))
  "Returns full string definition for message of type 'MissionFollowmeTask"
  (cl:format cl:nil "uint8 mode~%uint8 yaw_mode~%float64 initial_latitude~%float64 initial_longitude~%uint16 initial_altitude~%uint8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFollowmeTask>))
  (cl:+ 0
     1
     1
     8
     8
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFollowmeTask>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFollowmeTask
    (cl:cons ':mode (mode msg))
    (cl:cons ':yaw_mode (yaw_mode msg))
    (cl:cons ':initial_latitude (initial_latitude msg))
    (cl:cons ':initial_longitude (initial_longitude msg))
    (cl:cons ':initial_altitude (initial_altitude msg))
    (cl:cons ':sensitivity (sensitivity msg))
))
