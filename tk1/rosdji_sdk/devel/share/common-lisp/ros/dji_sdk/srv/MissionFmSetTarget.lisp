; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionFmSetTarget-request.msg.html

(cl:defclass <MissionFmSetTarget-request> (roslisp-msg-protocol:ros-message)
  ((followme_target
    :reader followme_target
    :initarg :followme_target
    :type dji_sdk-msg:MissionFollowmeTarget
    :initform (cl:make-instance 'dji_sdk-msg:MissionFollowmeTarget)))
)

(cl:defclass MissionFmSetTarget-request (<MissionFmSetTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFmSetTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFmSetTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionFmSetTarget-request> is deprecated: use dji_sdk-srv:MissionFmSetTarget-request instead.")))

(cl:ensure-generic-function 'followme_target-val :lambda-list '(m))
(cl:defmethod followme_target-val ((m <MissionFmSetTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:followme_target-val is deprecated.  Use dji_sdk-srv:followme_target instead.")
  (followme_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFmSetTarget-request>) ostream)
  "Serializes a message object of type '<MissionFmSetTarget-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'followme_target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFmSetTarget-request>) istream)
  "Deserializes a message object of type '<MissionFmSetTarget-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'followme_target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFmSetTarget-request>)))
  "Returns string type for a service object of type '<MissionFmSetTarget-request>"
  "dji_sdk/MissionFmSetTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmSetTarget-request)))
  "Returns string type for a service object of type 'MissionFmSetTarget-request"
  "dji_sdk/MissionFmSetTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFmSetTarget-request>)))
  "Returns md5sum for a message object of type '<MissionFmSetTarget-request>"
  "9ee16cc78eb2fc59f786dcdc9263f07f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFmSetTarget-request)))
  "Returns md5sum for a message object of type 'MissionFmSetTarget-request"
  "9ee16cc78eb2fc59f786dcdc9263f07f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFmSetTarget-request>)))
  "Returns full string definition for message of type '<MissionFmSetTarget-request>"
  (cl:format cl:nil "MissionFollowmeTarget followme_target~%~%================================================================================~%MSG: dji_sdk/MissionFollowmeTarget~%float64 latitude~%float64 longitude~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFmSetTarget-request)))
  "Returns full string definition for message of type 'MissionFmSetTarget-request"
  (cl:format cl:nil "MissionFollowmeTarget followme_target~%~%================================================================================~%MSG: dji_sdk/MissionFollowmeTarget~%float64 latitude~%float64 longitude~%uint16 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFmSetTarget-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'followme_target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFmSetTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFmSetTarget-request
    (cl:cons ':followme_target (followme_target msg))
))
;//! \htmlinclude MissionFmSetTarget-response.msg.html

(cl:defclass <MissionFmSetTarget-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionFmSetTarget-response (<MissionFmSetTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFmSetTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFmSetTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionFmSetTarget-response> is deprecated: use dji_sdk-srv:MissionFmSetTarget-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionFmSetTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFmSetTarget-response>) ostream)
  "Serializes a message object of type '<MissionFmSetTarget-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFmSetTarget-response>) istream)
  "Deserializes a message object of type '<MissionFmSetTarget-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFmSetTarget-response>)))
  "Returns string type for a service object of type '<MissionFmSetTarget-response>"
  "dji_sdk/MissionFmSetTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmSetTarget-response)))
  "Returns string type for a service object of type 'MissionFmSetTarget-response"
  "dji_sdk/MissionFmSetTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFmSetTarget-response>)))
  "Returns md5sum for a message object of type '<MissionFmSetTarget-response>"
  "9ee16cc78eb2fc59f786dcdc9263f07f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFmSetTarget-response)))
  "Returns md5sum for a message object of type 'MissionFmSetTarget-response"
  "9ee16cc78eb2fc59f786dcdc9263f07f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFmSetTarget-response>)))
  "Returns full string definition for message of type '<MissionFmSetTarget-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFmSetTarget-response)))
  "Returns full string definition for message of type 'MissionFmSetTarget-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFmSetTarget-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFmSetTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFmSetTarget-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionFmSetTarget)))
  'MissionFmSetTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionFmSetTarget)))
  'MissionFmSetTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmSetTarget)))
  "Returns string type for a service object of type '<MissionFmSetTarget>"
  "dji_sdk/MissionFmSetTarget")