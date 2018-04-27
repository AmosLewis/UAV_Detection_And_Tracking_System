; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude LocalPositionControl-request.msg.html

(cl:defclass <LocalPositionControl-request> (roslisp-msg-protocol:ros-message)
  ((x
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

(cl:defclass LocalPositionControl-request (<LocalPositionControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPositionControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPositionControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<LocalPositionControl-request> is deprecated: use dji_sdk-srv:LocalPositionControl-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LocalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:x-val is deprecated.  Use dji_sdk-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LocalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:y-val is deprecated.  Use dji_sdk-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <LocalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:z-val is deprecated.  Use dji_sdk-srv:z instead.")
  (z m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <LocalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw-val is deprecated.  Use dji_sdk-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPositionControl-request>) ostream)
  "Serializes a message object of type '<LocalPositionControl-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPositionControl-request>) istream)
  "Deserializes a message object of type '<LocalPositionControl-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPositionControl-request>)))
  "Returns string type for a service object of type '<LocalPositionControl-request>"
  "dji_sdk/LocalPositionControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPositionControl-request)))
  "Returns string type for a service object of type 'LocalPositionControl-request"
  "dji_sdk/LocalPositionControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPositionControl-request>)))
  "Returns md5sum for a message object of type '<LocalPositionControl-request>"
  "af2171d66d09e82c491cb7139793b007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPositionControl-request)))
  "Returns md5sum for a message object of type 'LocalPositionControl-request"
  "af2171d66d09e82c491cb7139793b007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPositionControl-request>)))
  "Returns full string definition for message of type '<LocalPositionControl-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPositionControl-request)))
  "Returns full string definition for message of type 'LocalPositionControl-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPositionControl-request>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPositionControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPositionControl-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude LocalPositionControl-response.msg.html

(cl:defclass <LocalPositionControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass LocalPositionControl-response (<LocalPositionControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPositionControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPositionControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<LocalPositionControl-response> is deprecated: use dji_sdk-srv:LocalPositionControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <LocalPositionControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPositionControl-response>) ostream)
  "Serializes a message object of type '<LocalPositionControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPositionControl-response>) istream)
  "Deserializes a message object of type '<LocalPositionControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPositionControl-response>)))
  "Returns string type for a service object of type '<LocalPositionControl-response>"
  "dji_sdk/LocalPositionControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPositionControl-response)))
  "Returns string type for a service object of type 'LocalPositionControl-response"
  "dji_sdk/LocalPositionControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPositionControl-response>)))
  "Returns md5sum for a message object of type '<LocalPositionControl-response>"
  "af2171d66d09e82c491cb7139793b007")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPositionControl-response)))
  "Returns md5sum for a message object of type 'LocalPositionControl-response"
  "af2171d66d09e82c491cb7139793b007")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPositionControl-response>)))
  "Returns full string definition for message of type '<LocalPositionControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPositionControl-response)))
  "Returns full string definition for message of type 'LocalPositionControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPositionControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPositionControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPositionControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalPositionControl)))
  'LocalPositionControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalPositionControl)))
  'LocalPositionControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPositionControl)))
  "Returns string type for a service object of type '<LocalPositionControl>"
  "dji_sdk/LocalPositionControl")