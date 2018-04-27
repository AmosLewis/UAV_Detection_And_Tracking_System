; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpUpload-request.msg.html

(cl:defclass <MissionWpUpload-request> (roslisp-msg-protocol:ros-message)
  ((waypoint_task
    :reader waypoint_task
    :initarg :waypoint_task
    :type dji_sdk-msg:MissionWaypointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionWaypointTask)))
)

(cl:defclass MissionWpUpload-request (<MissionWpUpload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpUpload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpUpload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpUpload-request> is deprecated: use dji_sdk-srv:MissionWpUpload-request instead.")))

(cl:ensure-generic-function 'waypoint_task-val :lambda-list '(m))
(cl:defmethod waypoint_task-val ((m <MissionWpUpload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:waypoint_task-val is deprecated.  Use dji_sdk-srv:waypoint_task instead.")
  (waypoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpUpload-request>) ostream)
  "Serializes a message object of type '<MissionWpUpload-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpUpload-request>) istream)
  "Deserializes a message object of type '<MissionWpUpload-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpUpload-request>)))
  "Returns string type for a service object of type '<MissionWpUpload-request>"
  "dji_sdk/MissionWpUploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload-request)))
  "Returns string type for a service object of type 'MissionWpUpload-request"
  "dji_sdk/MissionWpUploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpUpload-request>)))
  "Returns md5sum for a message object of type '<MissionWpUpload-request>"
  "ce0a38f3621e16d1b7a2d33b72384b5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpUpload-request)))
  "Returns md5sum for a message object of type 'MissionWpUpload-request"
  "ce0a38f3621e16d1b7a2d33b72384b5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpUpload-request>)))
  "Returns full string definition for message of type '<MissionWpUpload-request>"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpUpload-request)))
  "Returns full string definition for message of type 'MissionWpUpload-request"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpUpload-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpUpload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpUpload-request
    (cl:cons ':waypoint_task (waypoint_task msg))
))
;//! \htmlinclude MissionWpUpload-response.msg.html

(cl:defclass <MissionWpUpload-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionWpUpload-response (<MissionWpUpload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpUpload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpUpload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpUpload-response> is deprecated: use dji_sdk-srv:MissionWpUpload-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionWpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpUpload-response>) ostream)
  "Serializes a message object of type '<MissionWpUpload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpUpload-response>) istream)
  "Deserializes a message object of type '<MissionWpUpload-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpUpload-response>)))
  "Returns string type for a service object of type '<MissionWpUpload-response>"
  "dji_sdk/MissionWpUploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload-response)))
  "Returns string type for a service object of type 'MissionWpUpload-response"
  "dji_sdk/MissionWpUploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpUpload-response>)))
  "Returns md5sum for a message object of type '<MissionWpUpload-response>"
  "ce0a38f3621e16d1b7a2d33b72384b5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpUpload-response)))
  "Returns md5sum for a message object of type 'MissionWpUpload-response"
  "ce0a38f3621e16d1b7a2d33b72384b5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpUpload-response>)))
  "Returns full string definition for message of type '<MissionWpUpload-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpUpload-response)))
  "Returns full string definition for message of type 'MissionWpUpload-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpUpload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpUpload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpUpload-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpUpload)))
  'MissionWpUpload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpUpload)))
  'MissionWpUpload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpUpload)))
  "Returns string type for a service object of type '<MissionWpUpload>"
  "dji_sdk/MissionWpUpload")