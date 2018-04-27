; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionFollowmeTarget.msg.html

(cl:defclass <MissionFollowmeTarget> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionFollowmeTarget (<MissionFollowmeTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFollowmeTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFollowmeTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionFollowmeTarget> is deprecated: use dji_sdk-msg:MissionFollowmeTarget instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <MissionFollowmeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:latitude-val is deprecated.  Use dji_sdk-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <MissionFollowmeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:longitude-val is deprecated.  Use dji_sdk-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <MissionFollowmeTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:altitude-val is deprecated.  Use dji_sdk-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFollowmeTarget>) ostream)
  "Serializes a message object of type '<MissionFollowmeTarget>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFollowmeTarget>) istream)
  "Deserializes a message object of type '<MissionFollowmeTarget>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'altitude)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFollowmeTarget>)))
  "Returns string type for a message object of type '<MissionFollowmeTarget>"
  "dji_sdk/MissionFollowmeTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFollowmeTarget)))
  "Returns string type for a message object of type 'MissionFollowmeTarget"
  "dji_sdk/MissionFollowmeTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFollowmeTarget>)))
  "Returns md5sum for a message object of type '<MissionFollowmeTarget>"
  "3a0e9fef853d7437503847554a9f4ca1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFollowmeTarget)))
  "Returns md5sum for a message object of type 'MissionFollowmeTarget"
  "3a0e9fef853d7437503847554a9f4ca1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFollowmeTarget>)))
  "Returns full string definition for message of type '<MissionFollowmeTarget>"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFollowmeTarget)))
  "Returns full string definition for message of type 'MissionFollowmeTarget"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFollowmeTarget>))
  (cl:+ 0
     8
     8
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFollowmeTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFollowmeTarget
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
