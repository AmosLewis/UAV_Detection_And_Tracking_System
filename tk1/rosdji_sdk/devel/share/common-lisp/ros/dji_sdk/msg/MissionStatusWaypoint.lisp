; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionStatusWaypoint.msg.html

(cl:defclass <MissionStatusWaypoint> (roslisp-msg-protocol:ros-message)
  ((mission_type
    :reader mission_type
    :initarg :mission_type
    :type cl:fixnum
    :initform 0)
   (target_waypoint
    :reader target_waypoint
    :initarg :target_waypoint
    :type cl:fixnum
    :initform 0)
   (current_status
    :reader current_status
    :initarg :current_status
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionStatusWaypoint (<MissionStatusWaypoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatusWaypoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatusWaypoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionStatusWaypoint> is deprecated: use dji_sdk-msg:MissionStatusWaypoint instead.")))

(cl:ensure-generic-function 'mission_type-val :lambda-list '(m))
(cl:defmethod mission_type-val ((m <MissionStatusWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_type-val is deprecated.  Use dji_sdk-msg:mission_type instead.")
  (mission_type m))

(cl:ensure-generic-function 'target_waypoint-val :lambda-list '(m))
(cl:defmethod target_waypoint-val ((m <MissionStatusWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:target_waypoint-val is deprecated.  Use dji_sdk-msg:target_waypoint instead.")
  (target_waypoint m))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <MissionStatusWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:current_status-val is deprecated.  Use dji_sdk-msg:current_status instead.")
  (current_status m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MissionStatusWaypoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:error_code-val is deprecated.  Use dji_sdk-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatusWaypoint>) ostream)
  "Serializes a message object of type '<MissionStatusWaypoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_waypoint)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatusWaypoint>) istream)
  "Deserializes a message object of type '<MissionStatusWaypoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_waypoint)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatusWaypoint>)))
  "Returns string type for a message object of type '<MissionStatusWaypoint>"
  "dji_sdk/MissionStatusWaypoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatusWaypoint)))
  "Returns string type for a message object of type 'MissionStatusWaypoint"
  "dji_sdk/MissionStatusWaypoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatusWaypoint>)))
  "Returns md5sum for a message object of type '<MissionStatusWaypoint>"
  "4f2b7b1e7f32be55abc541c1b7552d41")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatusWaypoint)))
  "Returns md5sum for a message object of type 'MissionStatusWaypoint"
  "4f2b7b1e7f32be55abc541c1b7552d41")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatusWaypoint>)))
  "Returns full string definition for message of type '<MissionStatusWaypoint>"
  (cl:format cl:nil "uint8 mission_type~%uint8 target_waypoint~%uint8 current_status~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatusWaypoint)))
  "Returns full string definition for message of type 'MissionStatusWaypoint"
  (cl:format cl:nil "uint8 mission_type~%uint8 target_waypoint~%uint8 current_status~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatusWaypoint>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatusWaypoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatusWaypoint
    (cl:cons ':mission_type (mission_type msg))
    (cl:cons ':target_waypoint (target_waypoint msg))
    (cl:cons ':current_status (current_status msg))
    (cl:cons ':error_code (error_code msg))
))
