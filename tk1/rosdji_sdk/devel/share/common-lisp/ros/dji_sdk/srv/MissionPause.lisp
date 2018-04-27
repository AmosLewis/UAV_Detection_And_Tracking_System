; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionPause-request.msg.html

(cl:defclass <MissionPause-request> (roslisp-msg-protocol:ros-message)
  ((pause
    :reader pause
    :initarg :pause
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionPause-request (<MissionPause-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPause-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPause-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionPause-request> is deprecated: use dji_sdk-srv:MissionPause-request instead.")))

(cl:ensure-generic-function 'pause-val :lambda-list '(m))
(cl:defmethod pause-val ((m <MissionPause-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:pause-val is deprecated.  Use dji_sdk-srv:pause instead.")
  (pause m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPause-request>) ostream)
  "Serializes a message object of type '<MissionPause-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pause)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPause-request>) istream)
  "Deserializes a message object of type '<MissionPause-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'pause)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPause-request>)))
  "Returns string type for a service object of type '<MissionPause-request>"
  "dji_sdk/MissionPauseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPause-request)))
  "Returns string type for a service object of type 'MissionPause-request"
  "dji_sdk/MissionPauseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPause-request>)))
  "Returns md5sum for a message object of type '<MissionPause-request>"
  "c18266d07513b130ae375b3cb5d653dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPause-request)))
  "Returns md5sum for a message object of type 'MissionPause-request"
  "c18266d07513b130ae375b3cb5d653dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPause-request>)))
  "Returns full string definition for message of type '<MissionPause-request>"
  (cl:format cl:nil "uint8 pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPause-request)))
  "Returns full string definition for message of type 'MissionPause-request"
  (cl:format cl:nil "uint8 pause~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPause-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPause-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPause-request
    (cl:cons ':pause (pause msg))
))
;//! \htmlinclude MissionPause-response.msg.html

(cl:defclass <MissionPause-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionPause-response (<MissionPause-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPause-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPause-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionPause-response> is deprecated: use dji_sdk-srv:MissionPause-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionPause-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPause-response>) ostream)
  "Serializes a message object of type '<MissionPause-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPause-response>) istream)
  "Deserializes a message object of type '<MissionPause-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPause-response>)))
  "Returns string type for a service object of type '<MissionPause-response>"
  "dji_sdk/MissionPauseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPause-response)))
  "Returns string type for a service object of type 'MissionPause-response"
  "dji_sdk/MissionPauseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPause-response>)))
  "Returns md5sum for a message object of type '<MissionPause-response>"
  "c18266d07513b130ae375b3cb5d653dc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPause-response)))
  "Returns md5sum for a message object of type 'MissionPause-response"
  "c18266d07513b130ae375b3cb5d653dc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPause-response>)))
  "Returns full string definition for message of type '<MissionPause-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPause-response)))
  "Returns full string definition for message of type 'MissionPause-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPause-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPause-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPause-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionPause)))
  'MissionPause-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionPause)))
  'MissionPause-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPause)))
  "Returns string type for a service object of type '<MissionPause>"
  "dji_sdk/MissionPause")