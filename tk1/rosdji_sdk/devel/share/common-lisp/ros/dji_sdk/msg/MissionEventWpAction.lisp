; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionEventWpAction.msg.html

(cl:defclass <MissionEventWpAction> (roslisp-msg-protocol:ros-message)
  ((incident_type
    :reader incident_type
    :initarg :incident_type
    :type cl:fixnum
    :initform 0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionEventWpAction (<MissionEventWpAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionEventWpAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionEventWpAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionEventWpAction> is deprecated: use dji_sdk-msg:MissionEventWpAction instead.")))

(cl:ensure-generic-function 'incident_type-val :lambda-list '(m))
(cl:defmethod incident_type-val ((m <MissionEventWpAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:incident_type-val is deprecated.  Use dji_sdk-msg:incident_type instead.")
  (incident_type m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <MissionEventWpAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:repeat-val is deprecated.  Use dji_sdk-msg:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionEventWpAction>) ostream)
  "Serializes a message object of type '<MissionEventWpAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionEventWpAction>) istream)
  "Deserializes a message object of type '<MissionEventWpAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'incident_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionEventWpAction>)))
  "Returns string type for a message object of type '<MissionEventWpAction>"
  "dji_sdk/MissionEventWpAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionEventWpAction)))
  "Returns string type for a message object of type 'MissionEventWpAction"
  "dji_sdk/MissionEventWpAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionEventWpAction>)))
  "Returns md5sum for a message object of type '<MissionEventWpAction>"
  "feb2e4aeb62859a1aee7828f09a4a6a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionEventWpAction)))
  "Returns md5sum for a message object of type 'MissionEventWpAction"
  "feb2e4aeb62859a1aee7828f09a4a6a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionEventWpAction>)))
  "Returns full string definition for message of type '<MissionEventWpAction>"
  (cl:format cl:nil "uint8 incident_type~%uint8 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionEventWpAction)))
  "Returns full string definition for message of type 'MissionEventWpAction"
  (cl:format cl:nil "uint8 incident_type~%uint8 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionEventWpAction>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionEventWpAction>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionEventWpAction
    (cl:cons ':incident_type (incident_type msg))
    (cl:cons ':repeat (repeat msg))
))
