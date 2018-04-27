; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionEventWpReach.msg.html

(cl:defclass <MissionEventWpReach> (roslisp-msg-protocol:ros-message)
  ((incident_type
    :reader incident_type
    :initarg :incident_type
    :type cl:fixnum
    :initform 0)
   (waypoint_index
    :reader waypoint_index
    :initarg :waypoint_index
    :type cl:fixnum
    :initform 0)
   (current_status
    :reader current_status
    :initarg :current_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionEventWpReach (<MissionEventWpReach>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionEventWpReach>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionEventWpReach)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionEventWpReach> is deprecated: use dji_sdk-msg:MissionEventWpReach instead.")))

(cl:ensure-generic-function 'incident_type-val :lambda-list '(m))
(cl:defmethod incident_type-val ((m <MissionEventWpReach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:incident_type-val is deprecated.  Use dji_sdk-msg:incident_type instead.")
  (incident_type m))

(cl:ensure-generic-function 'waypoint_index-val :lambda-list '(m))
(cl:defmethod waypoint_index-val ((m <MissionEventWpReach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:waypoint_index-val is deprecated.  Use dji_sdk-msg:waypoint_index instead.")
  (waypoint_index m))

(cl:ensure-generic-function 'current_status-val :lambda-list '(m))
(cl:defmethod current_status-val ((m <MissionEventWpReach>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:current_status-val is deprecated.  Use dji_sdk-msg:current_status instead.")
  (current_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionEventWpReach>) ostream)
  "Serializes a message object of type '<MissionEventWpReach>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypoint_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionEventWpReach>) istream)
  "Deserializes a message object of type '<MissionEventWpReach>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'waypoint_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionEventWpReach>)))
  "Returns string type for a message object of type '<MissionEventWpReach>"
  "dji_sdk/MissionEventWpReach")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionEventWpReach)))
  "Returns string type for a message object of type 'MissionEventWpReach"
  "dji_sdk/MissionEventWpReach")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionEventWpReach>)))
  "Returns md5sum for a message object of type '<MissionEventWpReach>"
  "887664b69cd341b8a21df490bb79afea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionEventWpReach)))
  "Returns md5sum for a message object of type 'MissionEventWpReach"
  "887664b69cd341b8a21df490bb79afea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionEventWpReach>)))
  "Returns full string definition for message of type '<MissionEventWpReach>"
  (cl:format cl:nil "uint8 incident_type~%uint8 waypoint_index~%uint8 current_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionEventWpReach)))
  "Returns full string definition for message of type 'MissionEventWpReach"
  (cl:format cl:nil "uint8 incident_type~%uint8 waypoint_index~%uint8 current_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionEventWpReach>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionEventWpReach>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionEventWpReach
    (cl:cons ':incident_type (incident_type msg))
    (cl:cons ':waypoint_index (waypoint_index msg))
    (cl:cons ':current_status (current_status msg))
))
