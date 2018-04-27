; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpSetSpeed-request.msg.html

(cl:defclass <MissionWpSetSpeed-request> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionWpSetSpeed-request (<MissionWpSetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpSetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpSetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpSetSpeed-request> is deprecated: use dji_sdk-srv:MissionWpSetSpeed-request instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MissionWpSetSpeed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:speed-val is deprecated.  Use dji_sdk-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpSetSpeed-request>) ostream)
  "Serializes a message object of type '<MissionWpSetSpeed-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpSetSpeed-request>) istream)
  "Deserializes a message object of type '<MissionWpSetSpeed-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpSetSpeed-request>)))
  "Returns string type for a service object of type '<MissionWpSetSpeed-request>"
  "dji_sdk/MissionWpSetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpSetSpeed-request)))
  "Returns string type for a service object of type 'MissionWpSetSpeed-request"
  "dji_sdk/MissionWpSetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpSetSpeed-request>)))
  "Returns md5sum for a message object of type '<MissionWpSetSpeed-request>"
  "b087da1f6984d35b6029aa78841b05a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpSetSpeed-request)))
  "Returns md5sum for a message object of type 'MissionWpSetSpeed-request"
  "b087da1f6984d35b6029aa78841b05a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpSetSpeed-request>)))
  "Returns full string definition for message of type '<MissionWpSetSpeed-request>"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpSetSpeed-request)))
  "Returns full string definition for message of type 'MissionWpSetSpeed-request"
  (cl:format cl:nil "float32 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpSetSpeed-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpSetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpSetSpeed-request
    (cl:cons ':speed (speed msg))
))
;//! \htmlinclude MissionWpSetSpeed-response.msg.html

(cl:defclass <MissionWpSetSpeed-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionWpSetSpeed-response (<MissionWpSetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpSetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpSetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpSetSpeed-response> is deprecated: use dji_sdk-srv:MissionWpSetSpeed-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionWpSetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpSetSpeed-response>) ostream)
  "Serializes a message object of type '<MissionWpSetSpeed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpSetSpeed-response>) istream)
  "Deserializes a message object of type '<MissionWpSetSpeed-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpSetSpeed-response>)))
  "Returns string type for a service object of type '<MissionWpSetSpeed-response>"
  "dji_sdk/MissionWpSetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpSetSpeed-response)))
  "Returns string type for a service object of type 'MissionWpSetSpeed-response"
  "dji_sdk/MissionWpSetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpSetSpeed-response>)))
  "Returns md5sum for a message object of type '<MissionWpSetSpeed-response>"
  "b087da1f6984d35b6029aa78841b05a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpSetSpeed-response)))
  "Returns md5sum for a message object of type 'MissionWpSetSpeed-response"
  "b087da1f6984d35b6029aa78841b05a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpSetSpeed-response>)))
  "Returns full string definition for message of type '<MissionWpSetSpeed-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpSetSpeed-response)))
  "Returns full string definition for message of type 'MissionWpSetSpeed-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpSetSpeed-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpSetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpSetSpeed-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpSetSpeed)))
  'MissionWpSetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpSetSpeed)))
  'MissionWpSetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpSetSpeed)))
  "Returns string type for a service object of type '<MissionWpSetSpeed>"
  "dji_sdk/MissionWpSetSpeed")