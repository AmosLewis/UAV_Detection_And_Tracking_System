; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude AttitudeControl-request.msg.html

(cl:defclass <AttitudeControl-request> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass AttitudeControl-request (<AttitudeControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<AttitudeControl-request> is deprecated: use dji_sdk-srv:AttitudeControl-request instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <AttitudeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:flag-val is deprecated.  Use dji_sdk-srv:flag instead.")
  (flag m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <AttitudeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:x-val is deprecated.  Use dji_sdk-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <AttitudeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:y-val is deprecated.  Use dji_sdk-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <AttitudeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:z-val is deprecated.  Use dji_sdk-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <AttitudeControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw-val is deprecated.  Use dji_sdk-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeControl-request>) ostream)
  "Serializes a message object of type '<AttitudeControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeControl-request>) istream)
  "Deserializes a message object of type '<AttitudeControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeControl-request>)))
  "Returns string type for a service object of type '<AttitudeControl-request>"
  "dji_sdk/AttitudeControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeControl-request)))
  "Returns string type for a service object of type 'AttitudeControl-request"
  "dji_sdk/AttitudeControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeControl-request>)))
  "Returns md5sum for a message object of type '<AttitudeControl-request>"
  "29c0571c7f764a69752f1f1d3dac2ca2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeControl-request)))
  "Returns md5sum for a message object of type 'AttitudeControl-request"
  "29c0571c7f764a69752f1f1d3dac2ca2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeControl-request>)))
  "Returns full string definition for message of type '<AttitudeControl-request>"
  (cl:format cl:nil "uint8 flag~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeControl-request)))
  "Returns full string definition for message of type 'AttitudeControl-request"
  (cl:format cl:nil "uint8 flag~%float32 x~%float32 y~%float32 z~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeControl-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeControl-request
    (cl:cons ':flag (flag msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude AttitudeControl-response.msg.html

(cl:defclass <AttitudeControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AttitudeControl-response (<AttitudeControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AttitudeControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AttitudeControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<AttitudeControl-response> is deprecated: use dji_sdk-srv:AttitudeControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <AttitudeControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AttitudeControl-response>) ostream)
  "Serializes a message object of type '<AttitudeControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AttitudeControl-response>) istream)
  "Deserializes a message object of type '<AttitudeControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AttitudeControl-response>)))
  "Returns string type for a service object of type '<AttitudeControl-response>"
  "dji_sdk/AttitudeControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeControl-response)))
  "Returns string type for a service object of type 'AttitudeControl-response"
  "dji_sdk/AttitudeControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AttitudeControl-response>)))
  "Returns md5sum for a message object of type '<AttitudeControl-response>"
  "29c0571c7f764a69752f1f1d3dac2ca2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AttitudeControl-response)))
  "Returns md5sum for a message object of type 'AttitudeControl-response"
  "29c0571c7f764a69752f1f1d3dac2ca2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AttitudeControl-response>)))
  "Returns full string definition for message of type '<AttitudeControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AttitudeControl-response)))
  "Returns full string definition for message of type 'AttitudeControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AttitudeControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AttitudeControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AttitudeControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AttitudeControl)))
  'AttitudeControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AttitudeControl)))
  'AttitudeControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AttitudeControl)))
  "Returns string type for a service object of type '<AttitudeControl>"
  "dji_sdk/AttitudeControl")