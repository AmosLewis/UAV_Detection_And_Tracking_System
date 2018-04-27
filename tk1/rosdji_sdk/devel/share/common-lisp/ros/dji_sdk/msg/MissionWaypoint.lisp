; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionWaypoint.msg.html

(cl:defclass <MissionWaypoint> (roslisp-msg-protocol:ros-message)
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
    :type cl:float
    :initform 0.0)
   (damping_distance
    :reader damping_distance
    :initarg :damping_distance
    :type cl:float
    :initform 0.0)
   (target_yaw
    :reader target_yaw
    :initarg :target_yaw
    :type cl:fixnum
    :initform 0)
   (target_gimbal_pitch
    :reader target_gimbal_pitch
    :initarg :target_gimbal_pitch
    :type cl:fixnum
    :initform 0)
   (turn_mode
    :reader turn_mode
    :initarg :turn_mode
    :type cl:fixnum
    :initform 0)
   (has_action
    :reader has_action
    :initarg :has_action
    :type cl:fixnum
    :initform 0)
   (action_time_limit
    :reader action_time_limit
    :initarg :action_time_limit
    :type cl:fixnum
    :initform 0)
   (waypoint_action
    :reader waypoint_action
    :initarg :waypoint_action
    :type dji_sdk-msg:MissionWaypointAction
    :initform (cl:make-instance 'dji_sdk-msg:MissionWaypointAction)))
)

(cl:defclass MissionWaypoint (<MissionWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionWaypoint> is deprecated: use dji_sdk-msg:MissionWaypoint instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:latitude-val is deprecated.  Use dji_sdk-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:longitude-val is deprecated.  Use dji_sdk-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:altitude-val is deprecated.  Use dji_sdk-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'damping_distance-val :lambda-list '(m))
(cl:defmethod damping_distance-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:damping_distance-val is deprecated.  Use dji_sdk-msg:damping_distance instead.")
  (damping_distance m))

(cl:ensure-generic-function 'target_yaw-val :lambda-list '(m))
(cl:defmethod target_yaw-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:target_yaw-val is deprecated.  Use dji_sdk-msg:target_yaw instead.")
  (target_yaw m))

(cl:ensure-generic-function 'target_gimbal_pitch-val :lambda-list '(m))
(cl:defmethod target_gimbal_pitch-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:target_gimbal_pitch-val is deprecated.  Use dji_sdk-msg:target_gimbal_pitch instead.")
  (target_gimbal_pitch m))

(cl:ensure-generic-function 'turn_mode-val :lambda-list '(m))
(cl:defmethod turn_mode-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:turn_mode-val is deprecated.  Use dji_sdk-msg:turn_mode instead.")
  (turn_mode m))

(cl:ensure-generic-function 'has_action-val :lambda-list '(m))
(cl:defmethod has_action-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:has_action-val is deprecated.  Use dji_sdk-msg:has_action instead.")
  (has_action m))

(cl:ensure-generic-function 'action_time_limit-val :lambda-list '(m))
(cl:defmethod action_time_limit-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_time_limit-val is deprecated.  Use dji_sdk-msg:action_time_limit instead.")
  (action_time_limit m))

(cl:ensure-generic-function 'waypoint_action-val :lambda-list '(m))
(cl:defmethod waypoint_action-val ((m <MissionWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:waypoint_action-val is deprecated.  Use dji_sdk-msg:waypoint_action instead.")
  (waypoint_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypoint>) ostream)
  "Serializes a message object of type '<MissionWaypoint>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'damping_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'target_yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'target_gimbal_pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'has_action)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_time_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_time_limit)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_action) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypoint>) istream)
  "Deserializes a message object of type '<MissionWaypoint>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'damping_distance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_yaw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'target_gimbal_pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'has_action)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_time_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'action_time_limit)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_action) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypoint>)))
  "Returns string type for a message object of type '<MissionWaypoint>"
  "dji_sdk/MissionWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypoint)))
  "Returns string type for a message object of type 'MissionWaypoint"
  "dji_sdk/MissionWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypoint>)))
  "Returns md5sum for a message object of type '<MissionWaypoint>"
  "d321a17884980812391aa8e2850409e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypoint)))
  "Returns md5sum for a message object of type 'MissionWaypoint"
  "d321a17884980812391aa8e2850409e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypoint>)))
  "Returns full string definition for message of type '<MissionWaypoint>"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypoint)))
  "Returns full string definition for message of type 'MissionWaypoint"
  (cl:format cl:nil "float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypoint>))
  (cl:+ 0
     8
     8
     4
     4
     2
     2
     1
     1
     2
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_action))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypoint
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':damping_distance (damping_distance msg))
    (cl:cons ':target_yaw (target_yaw msg))
    (cl:cons ':target_gimbal_pitch (target_gimbal_pitch msg))
    (cl:cons ':turn_mode (turn_mode msg))
    (cl:cons ':has_action (has_action msg))
    (cl:cons ':action_time_limit (action_time_limit msg))
    (cl:cons ':waypoint_action (waypoint_action msg))
))
