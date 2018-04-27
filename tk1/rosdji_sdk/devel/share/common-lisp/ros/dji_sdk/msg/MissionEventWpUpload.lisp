; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionEventWpUpload.msg.html

(cl:defclass <MissionEventWpUpload> (roslisp-msg-protocol:ros-message)
  ((incident_type
    :reader incident_type
    :initarg :incident_type
    :type cl:fixnum
    :initform 0)
   (mission_valid
    :reader mission_valid
    :initarg :mission_valid
    :type cl:fixnum
    :initform 0)
   (estimated_runtime
    :reader estimated_runtime
    :initarg :estimated_runtime
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionEventWpUpload (<MissionEventWpUpload>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionEventWpUpload>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionEventWpUpload)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionEventWpUpload> is deprecated: use dji_sdk-msg:MissionEventWpUpload instead.")))

(cl:ensure-generic-function 'incident_type-val :lambda-list '(m))
(cl:defmethod incident_type-val ((m <MissionEventWpUpload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:incident_type-val is deprecated.  Use dji_sdk-msg:incident_type instead.")
  (incident_type m))

(cl:ensure-generic-function 'mission_valid-val :lambda-list '(m))
(cl:defmethod mission_valid-val ((m <MissionEventWpUpload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_valid-val is deprecated.  Use dji_sdk-msg:mission_valid instead.")
  (mission_valid m))

(cl:ensure-generic-function 'estimated_runtime-val :lambda-list '(m))
(cl:defmethod estimated_runtime-val ((m <MissionEventWpUpload>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:estimated_runtime-val is deprecated.  Use dji_sdk-msg:estimated_runtime instead.")
  (estimated_runtime m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionEventWpUpload>) ostream)
  "Serializes a message object of type '<MissionEventWpUpload>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_valid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estimated_runtime)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'estimated_runtime)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionEventWpUpload>) istream)
  "Deserializes a message object of type '<MissionEventWpUpload>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_valid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'estimated_runtime)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'estimated_runtime)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionEventWpUpload>)))
  "Returns string type for a message object of type '<MissionEventWpUpload>"
  "dji_sdk/MissionEventWpUpload")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionEventWpUpload)))
  "Returns string type for a message object of type 'MissionEventWpUpload"
  "dji_sdk/MissionEventWpUpload")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionEventWpUpload>)))
  "Returns md5sum for a message object of type '<MissionEventWpUpload>"
  "8bbd22d7335594c91d2500ae8d41ab36")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionEventWpUpload)))
  "Returns md5sum for a message object of type 'MissionEventWpUpload"
  "8bbd22d7335594c91d2500ae8d41ab36")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionEventWpUpload>)))
  "Returns full string definition for message of type '<MissionEventWpUpload>"
  (cl:format cl:nil "uint8 incident_type~%uint8 mission_valid~%uint16 estimated_runtime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionEventWpUpload)))
  "Returns full string definition for message of type 'MissionEventWpUpload"
  (cl:format cl:nil "uint8 incident_type~%uint8 mission_valid~%uint16 estimated_runtime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionEventWpUpload>))
  (cl:+ 0
     1
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionEventWpUpload>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionEventWpUpload
    (cl:cons ':incident_type (incident_type msg))
    (cl:cons ':mission_valid (mission_valid msg))
    (cl:cons ':estimated_runtime (estimated_runtime msg))
))
