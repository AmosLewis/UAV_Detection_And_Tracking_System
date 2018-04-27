; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SDKPermissionControl-request.msg.html

(cl:defclass <SDKPermissionControl-request> (roslisp-msg-protocol:ros-message)
  ((control_enable
    :reader control_enable
    :initarg :control_enable
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SDKPermissionControl-request (<SDKPermissionControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDKPermissionControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDKPermissionControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SDKPermissionControl-request> is deprecated: use dji_sdk-srv:SDKPermissionControl-request instead.")))

(cl:ensure-generic-function 'control_enable-val :lambda-list '(m))
(cl:defmethod control_enable-val ((m <SDKPermissionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:control_enable-val is deprecated.  Use dji_sdk-srv:control_enable instead.")
  (control_enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDKPermissionControl-request>) ostream)
  "Serializes a message object of type '<SDKPermissionControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_enable)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDKPermissionControl-request>) istream)
  "Deserializes a message object of type '<SDKPermissionControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control_enable)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDKPermissionControl-request>)))
  "Returns string type for a service object of type '<SDKPermissionControl-request>"
  "dji_sdk/SDKPermissionControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKPermissionControl-request)))
  "Returns string type for a service object of type 'SDKPermissionControl-request"
  "dji_sdk/SDKPermissionControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDKPermissionControl-request>)))
  "Returns md5sum for a message object of type '<SDKPermissionControl-request>"
  "de4f6d2b1e0b995a7d472739c6318805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDKPermissionControl-request)))
  "Returns md5sum for a message object of type 'SDKPermissionControl-request"
  "de4f6d2b1e0b995a7d472739c6318805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDKPermissionControl-request>)))
  "Returns full string definition for message of type '<SDKPermissionControl-request>"
  (cl:format cl:nil "~%~%uint8 control_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDKPermissionControl-request)))
  "Returns full string definition for message of type 'SDKPermissionControl-request"
  (cl:format cl:nil "~%~%uint8 control_enable~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDKPermissionControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDKPermissionControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SDKPermissionControl-request
    (cl:cons ':control_enable (control_enable msg))
))
;//! \htmlinclude SDKPermissionControl-response.msg.html

(cl:defclass <SDKPermissionControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SDKPermissionControl-response (<SDKPermissionControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SDKPermissionControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SDKPermissionControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SDKPermissionControl-response> is deprecated: use dji_sdk-srv:SDKPermissionControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SDKPermissionControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SDKPermissionControl-response>) ostream)
  "Serializes a message object of type '<SDKPermissionControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SDKPermissionControl-response>) istream)
  "Deserializes a message object of type '<SDKPermissionControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SDKPermissionControl-response>)))
  "Returns string type for a service object of type '<SDKPermissionControl-response>"
  "dji_sdk/SDKPermissionControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKPermissionControl-response)))
  "Returns string type for a service object of type 'SDKPermissionControl-response"
  "dji_sdk/SDKPermissionControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SDKPermissionControl-response>)))
  "Returns md5sum for a message object of type '<SDKPermissionControl-response>"
  "de4f6d2b1e0b995a7d472739c6318805")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SDKPermissionControl-response)))
  "Returns md5sum for a message object of type 'SDKPermissionControl-response"
  "de4f6d2b1e0b995a7d472739c6318805")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SDKPermissionControl-response>)))
  "Returns full string definition for message of type '<SDKPermissionControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SDKPermissionControl-response)))
  "Returns full string definition for message of type 'SDKPermissionControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SDKPermissionControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SDKPermissionControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SDKPermissionControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SDKPermissionControl)))
  'SDKPermissionControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SDKPermissionControl)))
  'SDKPermissionControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SDKPermissionControl)))
  "Returns string type for a service object of type '<SDKPermissionControl>"
  "dji_sdk/SDKPermissionControl")