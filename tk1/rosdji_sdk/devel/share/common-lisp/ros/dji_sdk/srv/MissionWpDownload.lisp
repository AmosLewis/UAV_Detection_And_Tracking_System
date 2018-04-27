; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpDownload-request.msg.html

(cl:defclass <MissionWpDownload-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionWpDownload-request (<MissionWpDownload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpDownload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpDownload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpDownload-request> is deprecated: use dji_sdk-srv:MissionWpDownload-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpDownload-request>) ostream)
  "Serializes a message object of type '<MissionWpDownload-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpDownload-request>) istream)
  "Deserializes a message object of type '<MissionWpDownload-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpDownload-request>)))
  "Returns string type for a service object of type '<MissionWpDownload-request>"
  "dji_sdk/MissionWpDownloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpDownload-request)))
  "Returns string type for a service object of type 'MissionWpDownload-request"
  "dji_sdk/MissionWpDownloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpDownload-request>)))
  "Returns md5sum for a message object of type '<MissionWpDownload-request>"
  "7c965e82a72d204e1e6d1e75389efb89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpDownload-request)))
  "Returns md5sum for a message object of type 'MissionWpDownload-request"
  "7c965e82a72d204e1e6d1e75389efb89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpDownload-request>)))
  "Returns full string definition for message of type '<MissionWpDownload-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpDownload-request)))
  "Returns full string definition for message of type 'MissionWpDownload-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpDownload-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpDownload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpDownload-request
))
;//! \htmlinclude MissionWpDownload-response.msg.html

(cl:defclass <MissionWpDownload-response> (roslisp-msg-protocol:ros-message)
  ((waypoint_task
    :reader waypoint_task
    :initarg :waypoint_task
    :type dji_sdk-msg:MissionWaypointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionWaypointTask)))
)

(cl:defclass MissionWpDownload-response (<MissionWpDownload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpDownload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpDownload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpDownload-response> is deprecated: use dji_sdk-srv:MissionWpDownload-response instead.")))

(cl:ensure-generic-function 'waypoint_task-val :lambda-list '(m))
(cl:defmethod waypoint_task-val ((m <MissionWpDownload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:waypoint_task-val is deprecated.  Use dji_sdk-srv:waypoint_task instead.")
  (waypoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpDownload-response>) ostream)
  "Serializes a message object of type '<MissionWpDownload-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpDownload-response>) istream)
  "Deserializes a message object of type '<MissionWpDownload-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpDownload-response>)))
  "Returns string type for a service object of type '<MissionWpDownload-response>"
  "dji_sdk/MissionWpDownloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpDownload-response)))
  "Returns string type for a service object of type 'MissionWpDownload-response"
  "dji_sdk/MissionWpDownloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpDownload-response>)))
  "Returns md5sum for a message object of type '<MissionWpDownload-response>"
  "7c965e82a72d204e1e6d1e75389efb89")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpDownload-response)))
  "Returns md5sum for a message object of type 'MissionWpDownload-response"
  "7c965e82a72d204e1e6d1e75389efb89")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpDownload-response>)))
  "Returns full string definition for message of type '<MissionWpDownload-response>"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpDownload-response)))
  "Returns full string definition for message of type 'MissionWpDownload-response"
  (cl:format cl:nil "MissionWaypointTask waypoint_task~%~%~%================================================================================~%MSG: dji_sdk/MissionWaypointTask~%float32 velocity_range~%float32 idle_velocity~%uint8 action_on_finish~%uint8 mission_exec_times~%uint8 yaw_mode~%uint8 trace_mode~%uint8 action_on_rc_lost~%uint8 gimbal_pitch_mode~%MissionWaypoint[] mission_waypoint~%~%================================================================================~%MSG: dji_sdk/MissionWaypoint~%float64 latitude~%float64 longitude~%float32 altitude~%float32 damping_distance~%int16 target_yaw~%int16 target_gimbal_pitch~%uint8 turn_mode~%uint8 has_action~%uint16 action_time_limit~%MissionWaypointAction waypoint_action~%~%================================================================================~%MSG: dji_sdk/MissionWaypointAction~%uint8 action_repeat~%uint8[15] command_list~%int16[15] command_parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpDownload-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpDownload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpDownload-response
    (cl:cons ':waypoint_task (waypoint_task msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpDownload)))
  'MissionWpDownload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpDownload)))
  'MissionWpDownload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpDownload)))
  "Returns string type for a service object of type '<MissionWpDownload>"
  "dji_sdk/MissionWpDownload")