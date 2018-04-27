; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude VelocityControl-request.msg.html

(cl:defclass <VelocityControl-request> (roslisp-msg-protocol:ros-message)
  ((frame
    :reader frame
    :initarg :frame
    :type cl:fixnum
    :initform 0)
   (vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (vy
    :reader vy
    :initarg :vy
    :type cl:float
    :initform 0.0)
   (vz
    :reader vz
    :initarg :vz
    :type cl:float
    :initform 0.0)
   (yawRate
    :reader yawRate
    :initarg :yawRate
    :type cl:float
    :initform 0.0))
)

(cl:defclass VelocityControl-request (<VelocityControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VelocityControl-request> is deprecated: use dji_sdk-srv:VelocityControl-request instead.")))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <VelocityControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:frame-val is deprecated.  Use dji_sdk-srv:frame instead.")
  (frame m))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <VelocityControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:vx-val is deprecated.  Use dji_sdk-srv:vx instead.")
  (vx m))

(cl:ensure-generic-function 'vy-val :lambda-list '(m))
(cl:defmethod vy-val ((m <VelocityControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:vy-val is deprecated.  Use dji_sdk-srv:vy instead.")
  (vy m))

(cl:ensure-generic-function 'vz-val :lambda-list '(m))
(cl:defmethod vz-val ((m <VelocityControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:vz-val is deprecated.  Use dji_sdk-srv:vz instead.")
  (vz m))

(cl:ensure-generic-function 'yawRate-val :lambda-list '(m))
(cl:defmethod yawRate-val ((m <VelocityControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yawRate-val is deprecated.  Use dji_sdk-srv:yawRate instead.")
  (yawRate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityControl-request>) ostream)
  "Serializes a message object of type '<VelocityControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yawRate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityControl-request>) istream)
  "Deserializes a message object of type '<VelocityControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frame)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vy) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yawRate) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityControl-request>)))
  "Returns string type for a service object of type '<VelocityControl-request>"
  "dji_sdk/VelocityControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControl-request)))
  "Returns string type for a service object of type 'VelocityControl-request"
  "dji_sdk/VelocityControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityControl-request>)))
  "Returns md5sum for a message object of type '<VelocityControl-request>"
  "6984cb35c6197216fa18c628573ee383")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityControl-request)))
  "Returns md5sum for a message object of type 'VelocityControl-request"
  "6984cb35c6197216fa18c628573ee383")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityControl-request>)))
  "Returns full string definition for message of type '<VelocityControl-request>"
  (cl:format cl:nil "uint8 frame~%float32 vx~%float32 vy~%float32 vz~%float32 yawRate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityControl-request)))
  "Returns full string definition for message of type 'VelocityControl-request"
  (cl:format cl:nil "uint8 frame~%float32 vx~%float32 vy~%float32 vz~%float32 yawRate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityControl-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityControl-request
    (cl:cons ':frame (frame msg))
    (cl:cons ':vx (vx msg))
    (cl:cons ':vy (vy msg))
    (cl:cons ':vz (vz msg))
    (cl:cons ':yawRate (yawRate msg))
))
;//! \htmlinclude VelocityControl-response.msg.html

(cl:defclass <VelocityControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VelocityControl-response (<VelocityControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VelocityControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VelocityControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VelocityControl-response> is deprecated: use dji_sdk-srv:VelocityControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VelocityControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VelocityControl-response>) ostream)
  "Serializes a message object of type '<VelocityControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VelocityControl-response>) istream)
  "Deserializes a message object of type '<VelocityControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VelocityControl-response>)))
  "Returns string type for a service object of type '<VelocityControl-response>"
  "dji_sdk/VelocityControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControl-response)))
  "Returns string type for a service object of type 'VelocityControl-response"
  "dji_sdk/VelocityControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VelocityControl-response>)))
  "Returns md5sum for a message object of type '<VelocityControl-response>"
  "6984cb35c6197216fa18c628573ee383")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VelocityControl-response)))
  "Returns md5sum for a message object of type 'VelocityControl-response"
  "6984cb35c6197216fa18c628573ee383")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VelocityControl-response>)))
  "Returns full string definition for message of type '<VelocityControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VelocityControl-response)))
  "Returns full string definition for message of type 'VelocityControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VelocityControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VelocityControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VelocityControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VelocityControl)))
  'VelocityControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VelocityControl)))
  'VelocityControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VelocityControl)))
  "Returns string type for a service object of type '<VelocityControl>"
  "dji_sdk/VelocityControl")