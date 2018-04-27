; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionWpGetSpeed-request.msg.html

(cl:defclass <MissionWpGetSpeed-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionWpGetSpeed-request (<MissionWpGetSpeed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetSpeed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetSpeed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetSpeed-request> is deprecated: use dji_sdk-srv:MissionWpGetSpeed-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetSpeed-request>) ostream)
  "Serializes a message object of type '<MissionWpGetSpeed-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetSpeed-request>) istream)
  "Deserializes a message object of type '<MissionWpGetSpeed-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns string type for a service object of type '<MissionWpGetSpeed-request>"
  "dji_sdk/MissionWpGetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed-request)))
  "Returns string type for a service object of type 'MissionWpGetSpeed-request"
  "dji_sdk/MissionWpGetSpeedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns md5sum for a message object of type '<MissionWpGetSpeed-request>"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetSpeed-request)))
  "Returns md5sum for a message object of type 'MissionWpGetSpeed-request"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetSpeed-request>)))
  "Returns full string definition for message of type '<MissionWpGetSpeed-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetSpeed-request)))
  "Returns full string definition for message of type 'MissionWpGetSpeed-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetSpeed-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetSpeed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetSpeed-request
))
;//! \htmlinclude MissionWpGetSpeed-response.msg.html

(cl:defclass <MissionWpGetSpeed-response> (roslisp-msg-protocol:ros-message)
  ((speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MissionWpGetSpeed-response (<MissionWpGetSpeed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionWpGetSpeed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionWpGetSpeed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionWpGetSpeed-response> is deprecated: use dji_sdk-srv:MissionWpGetSpeed-response instead.")))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MissionWpGetSpeed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:speed-val is deprecated.  Use dji_sdk-srv:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionWpGetSpeed-response>) ostream)
  "Serializes a message object of type '<MissionWpGetSpeed-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionWpGetSpeed-response>) istream)
  "Deserializes a message object of type '<MissionWpGetSpeed-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns string type for a service object of type '<MissionWpGetSpeed-response>"
  "dji_sdk/MissionWpGetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed-response)))
  "Returns string type for a service object of type 'MissionWpGetSpeed-response"
  "dji_sdk/MissionWpGetSpeedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns md5sum for a message object of type '<MissionWpGetSpeed-response>"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionWpGetSpeed-response)))
  "Returns md5sum for a message object of type 'MissionWpGetSpeed-response"
  "ca65bba734a79b4a6707341d829f4d5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionWpGetSpeed-response>)))
  "Returns full string definition for message of type '<MissionWpGetSpeed-response>"
  (cl:format cl:nil "float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionWpGetSpeed-response)))
  "Returns full string definition for message of type 'MissionWpGetSpeed-response"
  (cl:format cl:nil "float32 speed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionWpGetSpeed-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionWpGetSpeed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionWpGetSpeed-response
    (cl:cons ':speed (speed msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionWpGetSpeed)))
  'MissionWpGetSpeed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionWpGetSpeed)))
  'MissionWpGetSpeed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionWpGetSpeed)))
  "Returns string type for a service object of type '<MissionWpGetSpeed>"
  "dji_sdk/MissionWpGetSpeed")