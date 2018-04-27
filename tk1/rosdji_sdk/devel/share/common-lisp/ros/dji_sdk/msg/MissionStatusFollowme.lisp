; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionStatusFollowme.msg.html

(cl:defclass <MissionStatusFollowme> (roslisp-msg-protocol:ros-message)
  ((mission_type
    :reader mission_type
    :initarg :mission_type
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionStatusFollowme (<MissionStatusFollowme>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatusFollowme>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatusFollowme)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionStatusFollowme> is deprecated: use dji_sdk-msg:MissionStatusFollowme instead.")))

(cl:ensure-generic-function 'mission_type-val :lambda-list '(m))
(cl:defmethod mission_type-val ((m <MissionStatusFollowme>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_type-val is deprecated.  Use dji_sdk-msg:mission_type instead.")
  (mission_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatusFollowme>) ostream)
  "Serializes a message object of type '<MissionStatusFollowme>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatusFollowme>) istream)
  "Deserializes a message object of type '<MissionStatusFollowme>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatusFollowme>)))
  "Returns string type for a message object of type '<MissionStatusFollowme>"
  "dji_sdk/MissionStatusFollowme")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatusFollowme)))
  "Returns string type for a message object of type 'MissionStatusFollowme"
  "dji_sdk/MissionStatusFollowme")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatusFollowme>)))
  "Returns md5sum for a message object of type '<MissionStatusFollowme>"
  "917010b744881889ec912637e401b269")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatusFollowme)))
  "Returns md5sum for a message object of type 'MissionStatusFollowme"
  "917010b744881889ec912637e401b269")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatusFollowme>)))
  "Returns full string definition for message of type '<MissionStatusFollowme>"
  (cl:format cl:nil "uint8 mission_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatusFollowme)))
  "Returns full string definition for message of type 'MissionStatusFollowme"
  (cl:format cl:nil "uint8 mission_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatusFollowme>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatusFollowme>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatusFollowme
    (cl:cons ':mission_type (mission_type msg))
))
