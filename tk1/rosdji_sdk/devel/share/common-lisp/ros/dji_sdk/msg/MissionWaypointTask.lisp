; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionWaypointTask.msg.html

(cl:defclass <MissionWaypointTask> (roslisp-msg-protocol:ros-message)
  ((velocity_range
    :reader velocity_range
    :initarg :velocity_range
    :type cl:float
    :initform 0.0)
   (idle_velocity
    :reader idle_velocity
    :initarg :idle_velocity
    :type cl:float
    :initform 0.0)
   (action_on_finish
    :reader action_on_finish
    :initarg :action_on_finish
    :type cl:fixnum
    :initform 0)
   (mission_exec_times
    :reader mission_exec_times
    :initarg :mission_exec_times
    :type cl:fixnum
    :initform 0)
   (yaw_mode
    :reader yaw_mode
    :initarg :yaw_mode
    :type cl:fixnum
    :initform 0)
   (trace_mode
    :reader trace_mode
    :initarg :trace_mode
    :type cl:fixnum
    :initform 0)
   (action_on_rc_lost
    :reader action_on_rc_lost
    :initarg :action_on_rc_lost
    :type cl:fixnum
    :initform 0)
   (gimbal_pitch_mode
    :reader gimbal_pitch_mode
    :initarg :gimbal_pitch_mode
    :type cl:fixnum
    :initform 0)
   (mission_waypoint
    :reader mission_waypoint
    :initarg :mission_waypoint
    :type (cl:vector dji_sdk-msg:MissionWaypoint)
   :initform (cl:make-array 0 :element-type 'dji_sdk-msg:MissionWaypoint :initial-element (cl:make-instance 'dji_sdk-msg:MissionWaypoint))))
)

(cl:defclass MissionWaypointTask (<MissionWaypointTask>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWaypointTask>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWaypointTask)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionWaypointTask> is deprecated: use dji_sdk-msg:MissionWaypointTask instead.")))

(cl:ensure-generic-function 'velocity_range-val :lambda-list '(m))
(cl:defmethod velocity_range-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:velocity_range-val is deprecated.  Use dji_sdk-msg:velocity_range instead.")
  (velocity_range m))

(cl:ensure-generic-function 'idle_velocity-val :lambda-list '(m))
(cl:defmethod idle_velocity-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:idle_velocity-val is deprecated.  Use dji_sdk-msg:idle_velocity instead.")
  (idle_velocity m))

(cl:ensure-generic-function 'action_on_finish-val :lambda-list '(m))
(cl:defmethod action_on_finish-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_on_finish-val is deprecated.  Use dji_sdk-msg:action_on_finish instead.")
  (action_on_finish m))

(cl:ensure-generic-function 'mission_exec_times-val :lambda-list '(m))
(cl:defmethod mission_exec_times-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_exec_times-val is deprecated.  Use dji_sdk-msg:mission_exec_times instead.")
  (mission_exec_times m))

(cl:ensure-generic-function 'yaw_mode-val :lambda-list '(m))
(cl:defmethod yaw_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:yaw_mode-val is deprecated.  Use dji_sdk-msg:yaw_mode instead.")
  (yaw_mode m))

(cl:ensure-generic-function 'trace_mode-val :lambda-list '(m))
(cl:defmethod trace_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:trace_mode-val is deprecated.  Use dji_sdk-msg:trace_mode instead.")
  (trace_mode m))

(cl:ensure-generic-function 'action_on_rc_lost-val :lambda-list '(m))
(cl:defmethod action_on_rc_lost-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:action_on_rc_lost-val is deprecated.  Use dji_sdk-msg:action_on_rc_lost instead.")
  (action_on_rc_lost m))

(cl:ensure-generic-function 'gimbal_pitch_mode-val :lambda-list '(m))
(cl:defmethod gimbal_pitch_mode-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:gimbal_pitch_mode-val is deprecated.  Use dji_sdk-msg:gimbal_pitch_mode instead.")
  (gimbal_pitch_mode m))

(cl:ensure-generic-function 'mission_waypoint-val :lambda-list '(m))
(cl:defmethod mission_waypoint-val ((m <MissionWaypointTask>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_waypoint-val is deprecated.  Use dji_sdk-msg:mission_waypoint instead.")
  (mission_waypoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWaypointTask>) ostream)
  "Serializes a message object of type '<MissionWaypointTask>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'idle_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_finish)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_exec_times)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trace_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_rc_lost)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pitch_mode)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_waypoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission_waypoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWaypointTask>) istream)
  "Deserializes a message object of type '<MissionWaypointTask>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'idle_velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_finish)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_exec_times)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'yaw_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trace_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'action_on_rc_lost)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gimbal_pitch_mode)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_waypoint) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_waypoint)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_sdk-msg:MissionWaypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWaypointTask>)))
  "Returns string type for a message object of type '<MissionWaypointTask>"
  "dji_sdk/MissionWaypointTask")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWaypointTask)))
  "Returns string type for a message object of type 'MissionWaypointTask"
  "dji_sdk/MissionWaypointTask")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWaypointTask>)))
  "Returns md5sum for a message object of type '<MissionWaypointTask>"
  "a81a8c039337b422bde8ccc87d96c14b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWaypointTask)))
  "Returns md5sum for a message object of type 'MissionWaypointTask"
  "a81a8c039337b422bde8ccc87d96c14b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWaypointTask>)))
  "Returns full string definition for message of type '<MissionWaypointTask>"
  (cl:format cl:nil "float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWaypointTask)))
  "Returns full string definition for message of type 'MissionWaypointTask"
  (cl:format cl:nil "float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWaypointTask>))
  (cl:+ 0
     4
     4
     1
     1
     1
     1
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_waypoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWaypointTask>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWaypointTask
    (cl:cons ':velocity_range (velocity_range msg))
    (cl:cons ':idle_velocity (idle_velocity msg))
    (cl:cons ':action_on_finish (action_on_finish msg))
    (cl:cons ':mission_exec_times (mission_exec_times msg))
    (cl:cons ':yaw_mode (yaw_mode msg))
    (cl:cons ':trace_mode (trace_mode msg))
    (cl:cons ':action_on_rc_lost (action_on_rc_lost msg))
    (cl:cons ':gimbal_pitch_mode (gimbal_pitch_mode msg))
    (cl:cons ':mission_waypoint (mission_waypoint msg))
))
