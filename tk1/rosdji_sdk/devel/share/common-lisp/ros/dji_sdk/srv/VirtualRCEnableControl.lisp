; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude VirtualRCEnableControl-request.msg.html

(cl:defclass <VirtualRCEnableControl-request> (roslisp-msg-protocol:ros-message)
  ((enable
    :reader enable
    :initarg :enable
    :type cl:fixnum
    :initform 0)
   (if_back_to_real
    :reader if_back_to_real
    :initarg :if_back_to_real
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VirtualRCEnableControl-request (<VirtualRCEnableControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualRCEnableControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualRCEnableControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VirtualRCEnableControl-request> is deprecated: use dji_sdk-srv:VirtualRCEnableControl-request instead.")))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <VirtualRCEnableControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:enable-val is deprecated.  Use dji_sdk-srv:enable instead.")
  (enable m))

(cl:ensure-generic-function 'if_back_to_real-val :lambda-list '(m))
(cl:defmethod if_back_to_real-val ((m <VirtualRCEnableControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:if_back_to_real-val is deprecated.  Use dji_sdk-srv:if_back_to_real instead.")
  (if_back_to_real m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualRCEnableControl-request>) ostream)
  "Serializes a message object of type '<VirtualRCEnableControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'if_back_to_real)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualRCEnableControl-request>) istream)
  "Deserializes a message object of type '<VirtualRCEnableControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enable)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'if_back_to_real)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualRCEnableControl-request>)))
  "Returns string type for a service object of type '<VirtualRCEnableControl-request>"
  "dji_sdk/VirtualRCEnableControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCEnableControl-request)))
  "Returns string type for a service object of type 'VirtualRCEnableControl-request"
  "dji_sdk/VirtualRCEnableControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualRCEnableControl-request>)))
  "Returns md5sum for a message object of type '<VirtualRCEnableControl-request>"
  "20f7ad98ee118e7dcd3a99507a0c866f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualRCEnableControl-request)))
  "Returns md5sum for a message object of type 'VirtualRCEnableControl-request"
  "20f7ad98ee118e7dcd3a99507a0c866f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualRCEnableControl-request>)))
  "Returns full string definition for message of type '<VirtualRCEnableControl-request>"
  (cl:format cl:nil "uint8 enable~%uint8 if_back_to_real~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualRCEnableControl-request)))
  "Returns full string definition for message of type 'VirtualRCEnableControl-request"
  (cl:format cl:nil "uint8 enable~%uint8 if_back_to_real~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualRCEnableControl-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualRCEnableControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualRCEnableControl-request
    (cl:cons ':enable (enable msg))
    (cl:cons ':if_back_to_real (if_back_to_real msg))
))
;//! \htmlinclude VirtualRCEnableControl-response.msg.html

(cl:defclass <VirtualRCEnableControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VirtualRCEnableControl-response (<VirtualRCEnableControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualRCEnableControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualRCEnableControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VirtualRCEnableControl-response> is deprecated: use dji_sdk-srv:VirtualRCEnableControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VirtualRCEnableControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualRCEnableControl-response>) ostream)
  "Serializes a message object of type '<VirtualRCEnableControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualRCEnableControl-response>) istream)
  "Deserializes a message object of type '<VirtualRCEnableControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualRCEnableControl-response>)))
  "Returns string type for a service object of type '<VirtualRCEnableControl-response>"
  "dji_sdk/VirtualRCEnableControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCEnableControl-response)))
  "Returns string type for a service object of type 'VirtualRCEnableControl-response"
  "dji_sdk/VirtualRCEnableControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualRCEnableControl-response>)))
  "Returns md5sum for a message object of type '<VirtualRCEnableControl-response>"
  "20f7ad98ee118e7dcd3a99507a0c866f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualRCEnableControl-response)))
  "Returns md5sum for a message object of type 'VirtualRCEnableControl-response"
  "20f7ad98ee118e7dcd3a99507a0c866f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualRCEnableControl-response>)))
  "Returns full string definition for message of type '<VirtualRCEnableControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualRCEnableControl-response)))
  "Returns full string definition for message of type 'VirtualRCEnableControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualRCEnableControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualRCEnableControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualRCEnableControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VirtualRCEnableControl)))
  'VirtualRCEnableControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VirtualRCEnableControl)))
  'VirtualRCEnableControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCEnableControl)))
  "Returns string type for a service object of type '<VirtualRCEnableControl>"
  "dji_sdk/VirtualRCEnableControl")