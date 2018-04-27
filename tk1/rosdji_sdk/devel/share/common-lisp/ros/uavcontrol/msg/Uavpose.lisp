; Auto-generated. Do not edit!


(cl:in-package uavcontrol-msg)


;//! \htmlinclude Uavpose.msg.html

(cl:defclass <Uavpose> (roslisp-msg-protocol:ros-message)
  ((uav_roll
    :reader uav_roll
    :initarg :uav_roll
    :type cl:float
    :initform 0.0)
   (uav_pitch
    :reader uav_pitch
    :initarg :uav_pitch
    :type cl:float
    :initform 0.0)
   (uav_yaw
    :reader uav_yaw
    :initarg :uav_yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass Uavpose (<Uavpose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Uavpose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Uavpose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uavcontrol-msg:<Uavpose> is deprecated: use uavcontrol-msg:Uavpose instead.")))

(cl:ensure-generic-function 'uav_roll-val :lambda-list '(m))
(cl:defmethod uav_roll-val ((m <Uavpose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:uav_roll-val is deprecated.  Use uavcontrol-msg:uav_roll instead.")
  (uav_roll m))

(cl:ensure-generic-function 'uav_pitch-val :lambda-list '(m))
(cl:defmethod uav_pitch-val ((m <Uavpose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:uav_pitch-val is deprecated.  Use uavcontrol-msg:uav_pitch instead.")
  (uav_pitch m))

(cl:ensure-generic-function 'uav_yaw-val :lambda-list '(m))
(cl:defmethod uav_yaw-val ((m <Uavpose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:uav_yaw-val is deprecated.  Use uavcontrol-msg:uav_yaw instead.")
  (uav_yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Uavpose>) ostream)
  "Serializes a message object of type '<Uavpose>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uav_roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uav_pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'uav_yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Uavpose>) istream)
  "Deserializes a message object of type '<Uavpose>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uav_roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uav_pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uav_yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Uavpose>)))
  "Returns string type for a message object of type '<Uavpose>"
  "uavcontrol/Uavpose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Uavpose)))
  "Returns string type for a message object of type 'Uavpose"
  "uavcontrol/Uavpose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Uavpose>)))
  "Returns md5sum for a message object of type '<Uavpose>"
  "22e9cac41785208f8ab407803ec6c24f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Uavpose)))
  "Returns md5sum for a message object of type 'Uavpose"
  "22e9cac41785208f8ab407803ec6c24f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Uavpose>)))
  "Returns full string definition for message of type '<Uavpose>"
  (cl:format cl:nil "float32 uav_roll~%float32 uav_pitch~%float32 uav_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Uavpose)))
  "Returns full string definition for message of type 'Uavpose"
  (cl:format cl:nil "float32 uav_roll~%float32 uav_pitch~%float32 uav_yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Uavpose>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Uavpose>))
  "Converts a ROS message object to a list"
  (cl:list 'Uavpose
    (cl:cons ':uav_roll (uav_roll msg))
    (cl:cons ':uav_pitch (uav_pitch msg))
    (cl:cons ':uav_yaw (uav_yaw msg))
))
