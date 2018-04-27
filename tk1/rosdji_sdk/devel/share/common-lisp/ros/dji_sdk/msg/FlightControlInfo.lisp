; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude FlightControlInfo.msg.html

(cl:defclass <FlightControlInfo> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:fixnum
    :initform 0)
   (cur_ctrl_dev_in_navi_mode
    :reader cur_ctrl_dev_in_navi_mode
    :initarg :cur_ctrl_dev_in_navi_mode
    :type cl:fixnum
    :initform 0)
   (serial_req_status
    :reader serial_req_status
    :initarg :serial_req_status
    :type cl:fixnum
    :initform 0)
   (virtual_rc_status
    :reader virtual_rc_status
    :initarg :virtual_rc_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FlightControlInfo (<FlightControlInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FlightControlInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FlightControlInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<FlightControlInfo> is deprecated: use dji_sdk-msg:FlightControlInfo instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <FlightControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:control_mode-val is deprecated.  Use dji_sdk-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'cur_ctrl_dev_in_navi_mode-val :lambda-list '(m))
(cl:defmethod cur_ctrl_dev_in_navi_mode-val ((m <FlightControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:cur_ctrl_dev_in_navi_mode-val is deprecated.  Use dji_sdk-msg:cur_ctrl_dev_in_navi_mode instead.")
  (cur_ctrl_dev_in_navi_mode m))

(cl:ensure-generic-function 'serial_req_status-val :lambda-list '(m))
(cl:defmethod serial_req_status-val ((m <FlightControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:serial_req_status-val is deprecated.  Use dji_sdk-msg:serial_req_status instead.")
  (serial_req_status m))

(cl:ensure-generic-function 'virtual_rc_status-val :lambda-list '(m))
(cl:defmethod virtual_rc_status-val ((m <FlightControlInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:virtual_rc_status-val is deprecated.  Use dji_sdk-msg:virtual_rc_status instead.")
  (virtual_rc_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FlightControlInfo>) ostream)
  "Serializes a message object of type '<FlightControlInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cur_ctrl_dev_in_navi_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_req_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'virtual_rc_status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FlightControlInfo>) istream)
  "Deserializes a message object of type '<FlightControlInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cur_ctrl_dev_in_navi_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_req_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'virtual_rc_status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FlightControlInfo>)))
  "Returns string type for a message object of type '<FlightControlInfo>"
  "dji_sdk/FlightControlInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FlightControlInfo)))
  "Returns string type for a message object of type 'FlightControlInfo"
  "dji_sdk/FlightControlInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FlightControlInfo>)))
  "Returns md5sum for a message object of type '<FlightControlInfo>"
  "943648dc47db23e3c3071c5427b1db2b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FlightControlInfo)))
  "Returns md5sum for a message object of type 'FlightControlInfo"
  "943648dc47db23e3c3071c5427b1db2b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FlightControlInfo>)))
  "Returns full string definition for message of type '<FlightControlInfo>"
  (cl:format cl:nil "#control mode~%uint8 control_mode~%#0:rc, 1:mobile, 2:onboard~%uint8 cur_ctrl_dev_in_navi_mode~%#0:disabled, 1:enabled~%uint8 serial_req_status~%#0:disabled, 1:enabled~%uint8 virtual_rc_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FlightControlInfo)))
  "Returns full string definition for message of type 'FlightControlInfo"
  (cl:format cl:nil "#control mode~%uint8 control_mode~%#0:rc, 1:mobile, 2:onboard~%uint8 cur_ctrl_dev_in_navi_mode~%#0:disabled, 1:enabled~%uint8 serial_req_status~%#0:disabled, 1:enabled~%uint8 virtual_rc_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FlightControlInfo>))
  (cl:+ 0
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FlightControlInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'FlightControlInfo
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':cur_ctrl_dev_in_navi_mode (cur_ctrl_dev_in_navi_mode msg))
    (cl:cons ':serial_req_status (serial_req_status msg))
    (cl:cons ':virtual_rc_status (virtual_rc_status msg))
))
