; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpSetSpeed-request.msg.html

(cl:defclass <MissionHpSetSpeed-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (direction
    :reader direction
    :initarg :direction
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionHpSetSpeed-request (<MissionHpSetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpSetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpSetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpSetSpeed-request> is deprecated: use dji_sdk-srv:MissionHpSetSpeed-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MissionHpSetSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:speed-val is deprecated.  Use dji_sdk-srv:speed instead.")
  (speed m))

(cl:ensure-generic-function 'direction-val :lambda-list '(m))
(cl:defmethod direction-val ((m <MissionHpSetSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:direction-val is deprecated.  Use dji_sdk-srv:direction instead.")
  (direction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpSetSpeed-request>) ostream)
  "Serializes a message object of type '<MissionHpSetSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpSetSpeed-request>) istream)
  "Deserializes a message object of type '<MissionHpSetSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'direction)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpSetSpeed-request>)))
  "Returns string type for a service object of type '<MissionHpSetSpeed-request>"
  "dji_sdk/MissionHpSetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetSpeed-request)))
  "Returns string type for a service object of type 'MissionHpSetSpeed-request"
  "dji_sdk/MissionHpSetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpSetSpeed-request>)))
  "Returns md5sum for a message object of type '<MissionHpSetSpeed-request>"
  "da0df5b8181232e1f4ba7f7d4faba414")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpSetSpeed-request)))
  "Returns md5sum for a message object of type 'MissionHpSetSpeed-request"
  "da0df5b8181232e1f4ba7f7d4faba414")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpSetSpeed-request>)))
  "Returns full string definition for message of type '<MissionHpSetSpeed-request>"
  (cl:format cl:nil "float32 speed~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpSetSpeed-request)))
  "Returns full string definition for message of type 'MissionHpSetSpeed-request"
  (cl:format cl:nil "float32 speed~%uint8 direction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpSetSpeed-request>))
  (cl:+ 0
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpSetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpSetSpeed-request
    (cl:cons ':speed (speed msg))
    (cl:cons ':direction (direction msg))
))
;//! \htmlinclude MissionHpSetSpeed-response.msg.html

(cl:defclass <MissionHpSetSpeed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionHpSetSpeed-response (<MissionHpSetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpSetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpSetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpSetSpeed-response> is deprecated: use dji_sdk-srv:MissionHpSetSpeed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpSetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpSetSpeed-response>) ostream)
  "Serializes a message object of type '<MissionHpSetSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpSetSpeed-response>) istream)
  "Deserializes a message object of type '<MissionHpSetSpeed-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpSetSpeed-response>)))
  "Returns string type for a service object of type '<MissionHpSetSpeed-response>"
  "dji_sdk/MissionHpSetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetSpeed-response)))
  "Returns string type for a service object of type 'MissionHpSetSpeed-response"
  "dji_sdk/MissionHpSetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpSetSpeed-response>)))
  "Returns md5sum for a message object of type '<MissionHpSetSpeed-response>"
  "da0df5b8181232e1f4ba7f7d4faba414")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpSetSpeed-response)))
  "Returns md5sum for a message object of type 'MissionHpSetSpeed-response"
  "da0df5b8181232e1f4ba7f7d4faba414")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpSetSpeed-response>)))
  "Returns full string definition for message of type '<MissionHpSetSpeed-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpSetSpeed-response)))
  "Returns full string definition for message of type 'MissionHpSetSpeed-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpSetSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpSetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpSetSpeed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpSetSpeed)))
  'MissionHpSetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpSetSpeed)))
  'MissionHpSetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpSetSpeed)))
  "Returns string type for a service object of type '<MissionHpSetSpeed>"
  "dji_sdk/MissionHpSetSpeed")