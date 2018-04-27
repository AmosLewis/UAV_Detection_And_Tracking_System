; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude DroneArmControl-request.msg.html

(cl:defclass <DroneArmControl-request> (roslisp-msg-protocol:ros-message)
  ((arm
    :reader arm
    :initarg :arm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DroneArmControl-request (<DroneArmControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneArmControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneArmControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneArmControl-request> is deprecated: use dji_sdk-srv:DroneArmControl-request instead.")))

(cl:ensure-generic-function 'arm-val :lambda-list '(m))
(cl:defmethod arm-val ((m <DroneArmControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:arm-val is deprecated.  Use dji_sdk-srv:arm instead.")
  (arm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneArmControl-request>) ostream)
  "Serializes a message object of type '<DroneArmControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneArmControl-request>) istream)
  "Deserializes a message object of type '<DroneArmControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'arm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneArmControl-request>)))
  "Returns string type for a service object of type '<DroneArmControl-request>"
  "dji_sdk/DroneArmControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl-request)))
  "Returns string type for a service object of type 'DroneArmControl-request"
  "dji_sdk/DroneArmControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneArmControl-request>)))
  "Returns md5sum for a message object of type '<DroneArmControl-request>"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneArmControl-request)))
  "Returns md5sum for a message object of type 'DroneArmControl-request"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneArmControl-request>)))
  "Returns full string definition for message of type '<DroneArmControl-request>"
  (cl:format cl:nil "uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneArmControl-request)))
  "Returns full string definition for message of type 'DroneArmControl-request"
  (cl:format cl:nil "uint8 arm~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneArmControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneArmControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneArmControl-request
    (cl:cons ':arm (arm msg))
))
;//! \htmlinclude DroneArmControl-response.msg.html

(cl:defclass <DroneArmControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DroneArmControl-response (<DroneArmControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DroneArmControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DroneArmControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<DroneArmControl-response> is deprecated: use dji_sdk-srv:DroneArmControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DroneArmControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DroneArmControl-response>) ostream)
  "Serializes a message object of type '<DroneArmControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DroneArmControl-response>) istream)
  "Deserializes a message object of type '<DroneArmControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DroneArmControl-response>)))
  "Returns string type for a service object of type '<DroneArmControl-response>"
  "dji_sdk/DroneArmControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl-response)))
  "Returns string type for a service object of type 'DroneArmControl-response"
  "dji_sdk/DroneArmControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DroneArmControl-response>)))
  "Returns md5sum for a message object of type '<DroneArmControl-response>"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DroneArmControl-response)))
  "Returns md5sum for a message object of type 'DroneArmControl-response"
  "dd0555f68f747c630a22ca214d8ef45c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DroneArmControl-response>)))
  "Returns full string definition for message of type '<DroneArmControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DroneArmControl-response)))
  "Returns full string definition for message of type 'DroneArmControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DroneArmControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DroneArmControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DroneArmControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DroneArmControl)))
  'DroneArmControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DroneArmControl)))
  'DroneArmControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DroneArmControl)))
  "Returns string type for a service object of type '<DroneArmControl>"
  "dji_sdk/DroneArmControl")