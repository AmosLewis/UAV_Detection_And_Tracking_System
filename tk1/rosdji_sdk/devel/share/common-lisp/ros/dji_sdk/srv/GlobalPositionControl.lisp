; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude GlobalPositionControl-request.msg.html

(cl:defclass <GlobalPositionControl-request> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0))
)

(cl:defclass GlobalPositionControl-request (<GlobalPositionControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPositionControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPositionControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GlobalPositionControl-request> is deprecated: use dji_sdk-srv:GlobalPositionControl-request instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <GlobalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:latitude-val is deprecated.  Use dji_sdk-srv:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <GlobalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:longitude-val is deprecated.  Use dji_sdk-srv:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GlobalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:altitude-val is deprecated.  Use dji_sdk-srv:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GlobalPositionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw-val is deprecated.  Use dji_sdk-srv:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPositionControl-request>) ostream)
  "Serializes a message object of type '<GlobalPositionControl-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPositionControl-request>) istream)
  "Deserializes a message object of type '<GlobalPositionControl-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPositionControl-request>)))
  "Returns string type for a service object of type '<GlobalPositionControl-request>"
  "dji_sdk/GlobalPositionControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPositionControl-request)))
  "Returns string type for a service object of type 'GlobalPositionControl-request"
  "dji_sdk/GlobalPositionControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPositionControl-request>)))
  "Returns md5sum for a message object of type '<GlobalPositionControl-request>"
  "760463c3d8356eaf13428439b7b2ac10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPositionControl-request)))
  "Returns md5sum for a message object of type 'GlobalPositionControl-request"
  "760463c3d8356eaf13428439b7b2ac10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPositionControl-request>)))
  "Returns full string definition for message of type '<GlobalPositionControl-request>"
  (cl:format cl:nil "~%float64 latitude~%~%float64 longitude~%float32 altitude~%~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPositionControl-request)))
  "Returns full string definition for message of type 'GlobalPositionControl-request"
  (cl:format cl:nil "~%float64 latitude~%~%float64 longitude~%float32 altitude~%~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPositionControl-request>))
  (cl:+ 0
     8
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPositionControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPositionControl-request
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':yaw (yaw msg))
))
;//! \htmlinclude GlobalPositionControl-response.msg.html

(cl:defclass <GlobalPositionControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GlobalPositionControl-response (<GlobalPositionControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPositionControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPositionControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GlobalPositionControl-response> is deprecated: use dji_sdk-srv:GlobalPositionControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GlobalPositionControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPositionControl-response>) ostream)
  "Serializes a message object of type '<GlobalPositionControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPositionControl-response>) istream)
  "Deserializes a message object of type '<GlobalPositionControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPositionControl-response>)))
  "Returns string type for a service object of type '<GlobalPositionControl-response>"
  "dji_sdk/GlobalPositionControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPositionControl-response)))
  "Returns string type for a service object of type 'GlobalPositionControl-response"
  "dji_sdk/GlobalPositionControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPositionControl-response>)))
  "Returns md5sum for a message object of type '<GlobalPositionControl-response>"
  "760463c3d8356eaf13428439b7b2ac10")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPositionControl-response)))
  "Returns md5sum for a message object of type 'GlobalPositionControl-response"
  "760463c3d8356eaf13428439b7b2ac10")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPositionControl-response>)))
  "Returns full string definition for message of type '<GlobalPositionControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPositionControl-response)))
  "Returns full string definition for message of type 'GlobalPositionControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPositionControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPositionControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPositionControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalPositionControl)))
  'GlobalPositionControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalPositionControl)))
  'GlobalPositionControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPositionControl)))
  "Returns string type for a service object of type '<GlobalPositionControl>"
  "dji_sdk/GlobalPositionControl")