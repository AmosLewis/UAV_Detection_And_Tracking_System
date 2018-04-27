; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionStatusOther.msg.html

(cl:defclass <MissionStatusOther> (roslisp-msg-protocol:ros-message)
  ((mission_type
    :reader mission_type
    :initarg :mission_type
    :type cl:fixnum
    :initform 0)
   (last_mission_type
    :reader last_mission_type
    :initarg :last_mission_type
    :type cl:fixnum
    :initform 0)
   (is_broken
    :reader is_broken
    :initarg :is_broken
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionStatusOther (<MissionStatusOther>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatusOther>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatusOther)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionStatusOther> is deprecated: use dji_sdk-msg:MissionStatusOther instead.")))

(cl:ensure-generic-function 'mission_type-val :lambda-list '(m))
(cl:defmethod mission_type-val ((m <MissionStatusOther>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_type-val is deprecated.  Use dji_sdk-msg:mission_type instead.")
  (mission_type m))

(cl:ensure-generic-function 'last_mission_type-val :lambda-list '(m))
(cl:defmethod last_mission_type-val ((m <MissionStatusOther>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:last_mission_type-val is deprecated.  Use dji_sdk-msg:last_mission_type instead.")
  (last_mission_type m))

(cl:ensure-generic-function 'is_broken-val :lambda-list '(m))
(cl:defmethod is_broken-val ((m <MissionStatusOther>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:is_broken-val is deprecated.  Use dji_sdk-msg:is_broken instead.")
  (is_broken m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MissionStatusOther>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:error_code-val is deprecated.  Use dji_sdk-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatusOther>) ostream)
  "Serializes a message object of type '<MissionStatusOther>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_mission_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_broken)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatusOther>) istream)
  "Deserializes a message object of type '<MissionStatusOther>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'last_mission_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_broken)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatusOther>)))
  "Returns string type for a message object of type '<MissionStatusOther>"
  "dji_sdk/MissionStatusOther")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatusOther)))
  "Returns string type for a message object of type 'MissionStatusOther"
  "dji_sdk/MissionStatusOther")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatusOther>)))
  "Returns md5sum for a message object of type '<MissionStatusOther>"
  "a0261ae1eb980895a8685db930ec1a68")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatusOther)))
  "Returns md5sum for a message object of type 'MissionStatusOther"
  "a0261ae1eb980895a8685db930ec1a68")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatusOther>)))
  "Returns full string definition for message of type '<MissionStatusOther>"
  (cl:format cl:nil "uint8 mission_type~%uint8 last_mission_type~%uint8 is_broken~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatusOther)))
  "Returns full string definition for message of type 'MissionStatusOther"
  (cl:format cl:nil "uint8 mission_type~%uint8 last_mission_type~%uint8 is_broken~%uint8 error_code~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatusOther>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatusOther>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatusOther
    (cl:cons ':mission_type (mission_type msg))
    (cl:cons ':last_mission_type (last_mission_type msg))
    (cl:cons ':is_broken (is_broken msg))
    (cl:cons ':error_code (error_code msg))
))
