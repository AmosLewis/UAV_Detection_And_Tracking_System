; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpSetRadius-request.msg.html

(cl:defclass <MissionHpSetRadius-request> (roslisp-msg-protocol:ros-message)
  ((radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionHpSetRadius-request (<MissionHpSetRadius-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpSetRadius-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpSetRadius-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpSetRadius-request> is deprecated: use dji_sdk-srv:MissionHpSetRadius-request instead.")))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <MissionHpSetRadius-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:radius-val is deprecated.  Use dji_sdk-srv:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpSetRadius-request>) ostream)
  "Serializes a message object of type '<MissionHpSetRadius-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpSetRadius-request>) istream)
  "Deserializes a message object of type '<MissionHpSetRadius-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpSetRadius-request>)))
  "Returns string type for a service object of type '<MissionHpSetRadius-request>"
  "dji_sdk/MissionHpSetRadiusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetRadius-request)))
  "Returns string type for a service object of type 'MissionHpSetRadius-request"
  "dji_sdk/MissionHpSetRadiusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpSetRadius-request>)))
  "Returns md5sum for a message object of type '<MissionHpSetRadius-request>"
  "44e997bb8d1a50ef179a59895af1c426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpSetRadius-request)))
  "Returns md5sum for a message object of type 'MissionHpSetRadius-request"
  "44e997bb8d1a50ef179a59895af1c426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpSetRadius-request>)))
  "Returns full string definition for message of type '<MissionHpSetRadius-request>"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpSetRadius-request)))
  "Returns full string definition for message of type 'MissionHpSetRadius-request"
  (cl:format cl:nil "float32 radius~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpSetRadius-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpSetRadius-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpSetRadius-request
    (cl:cons ':radius (radius msg))
))
;//! \htmlinclude MissionHpSetRadius-response.msg.html

(cl:defclass <MissionHpSetRadius-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionHpSetRadius-response (<MissionHpSetRadius-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpSetRadius-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpSetRadius-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpSetRadius-response> is deprecated: use dji_sdk-srv:MissionHpSetRadius-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpSetRadius-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpSetRadius-response>) ostream)
  "Serializes a message object of type '<MissionHpSetRadius-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpSetRadius-response>) istream)
  "Deserializes a message object of type '<MissionHpSetRadius-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpSetRadius-response>)))
  "Returns string type for a service object of type '<MissionHpSetRadius-response>"
  "dji_sdk/MissionHpSetRadiusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetRadius-response)))
  "Returns string type for a service object of type 'MissionHpSetRadius-response"
  "dji_sdk/MissionHpSetRadiusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpSetRadius-response>)))
  "Returns md5sum for a message object of type '<MissionHpSetRadius-response>"
  "44e997bb8d1a50ef179a59895af1c426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpSetRadius-response)))
  "Returns md5sum for a message object of type 'MissionHpSetRadius-response"
  "44e997bb8d1a50ef179a59895af1c426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpSetRadius-response>)))
  "Returns full string definition for message of type '<MissionHpSetRadius-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpSetRadius-response)))
  "Returns full string definition for message of type 'MissionHpSetRadius-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpSetRadius-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpSetRadius-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpSetRadius-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpSetRadius)))
  'MissionHpSetRadius-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpSetRadius)))
  'MissionHpSetRadius-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetRadius)))
  "Returns string type for a service object of type '<MissionHpSetRadius>"
  "dji_sdk/MissionHpSetRadius")