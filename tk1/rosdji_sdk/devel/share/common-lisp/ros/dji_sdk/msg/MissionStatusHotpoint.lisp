; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionStatusHotpoint.msg.html

(cl:defclass <MissionStatusHotpoint> (roslisp-msg-protocol:ros-message)
  ((mission_type
    :reader mission_type
    :initarg :mission_type
    :type cl:fixnum
    :initform 0)
   (mission_status
    :reader mission_status
    :initarg :mission_status
    :type cl:fixnum
    :initform 0)
   (hotpoint_radius
    :reader hotpoint_radius
    :initarg :hotpoint_radius
    :type cl:fixnum
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0)
   (hotpoint_velocity
    :reader hotpoint_velocity
    :initarg :hotpoint_velocity
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionStatusHotpoint (<MissionStatusHotpoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatusHotpoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatusHotpoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionStatusHotpoint> is deprecated: use dji_sdk-msg:MissionStatusHotpoint instead.")))

(cl:ensure-generic-function 'mission_type-val :lambda-list '(m))
(cl:defmethod mission_type-val ((m <MissionStatusHotpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_type-val is deprecated.  Use dji_sdk-msg:mission_type instead.")
  (mission_type m))

(cl:ensure-generic-function 'mission_status-val :lambda-list '(m))
(cl:defmethod mission_status-val ((m <MissionStatusHotpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:mission_status-val is deprecated.  Use dji_sdk-msg:mission_status instead.")
  (mission_status m))

(cl:ensure-generic-function 'hotpoint_radius-val :lambda-list '(m))
(cl:defmethod hotpoint_radius-val ((m <MissionStatusHotpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:hotpoint_radius-val is deprecated.  Use dji_sdk-msg:hotpoint_radius instead.")
  (hotpoint_radius m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <MissionStatusHotpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:error_code-val is deprecated.  Use dji_sdk-msg:error_code instead.")
  (error_code m))

(cl:ensure-generic-function 'hotpoint_velocity-val :lambda-list '(m))
(cl:defmethod hotpoint_velocity-val ((m <MissionStatusHotpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:hotpoint_velocity-val is deprecated.  Use dji_sdk-msg:hotpoint_velocity instead.")
  (hotpoint_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatusHotpoint>) ostream)
  "Serializes a message object of type '<MissionStatusHotpoint>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hotpoint_radius)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_velocity)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatusHotpoint>) istream)
  "Deserializes a message object of type '<MissionStatusHotpoint>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mission_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hotpoint_radius)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error_code)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hotpoint_velocity)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatusHotpoint>)))
  "Returns string type for a message object of type '<MissionStatusHotpoint>"
  "dji_sdk/MissionStatusHotpoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatusHotpoint)))
  "Returns string type for a message object of type 'MissionStatusHotpoint"
  "dji_sdk/MissionStatusHotpoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatusHotpoint>)))
  "Returns md5sum for a message object of type '<MissionStatusHotpoint>"
  "8139577a287bd3bb109446868782e2f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatusHotpoint)))
  "Returns md5sum for a message object of type 'MissionStatusHotpoint"
  "8139577a287bd3bb109446868782e2f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatusHotpoint>)))
  "Returns full string definition for message of type '<MissionStatusHotpoint>"
  (cl:format cl:nil "uint8 mission_type~%uint8 mission_status~%uint16 hotpoint_radius~%uint8 error_code~%uint8 hotpoint_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatusHotpoint)))
  "Returns full string definition for message of type 'MissionStatusHotpoint"
  (cl:format cl:nil "uint8 mission_type~%uint8 mission_status~%uint16 hotpoint_radius~%uint8 error_code~%uint8 hotpoint_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatusHotpoint>))
  (cl:+ 0
     1
     1
     2
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatusHotpoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatusHotpoint
    (cl:cons ':mission_type (mission_type msg))
    (cl:cons ':mission_status (mission_status msg))
    (cl:cons ':hotpoint_radius (hotpoint_radius msg))
    (cl:cons ':error_code (error_code msg))
    (cl:cons ':hotpoint_velocity (hotpoint_velocity msg))
))
