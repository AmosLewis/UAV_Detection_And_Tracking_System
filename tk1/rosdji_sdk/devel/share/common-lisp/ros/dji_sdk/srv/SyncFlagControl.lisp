; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude SyncFlagControl-request.msg.html

(cl:defclass <SyncFlagControl-request> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type cl:integer
    :initform 0))
)

(cl:defclass SyncFlagControl-request (<SyncFlagControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncFlagControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncFlagControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SyncFlagControl-request> is deprecated: use dji_sdk-srv:SyncFlagControl-request instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <SyncFlagControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:frequency-val is deprecated.  Use dji_sdk-srv:frequency instead.")
  (frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncFlagControl-request>) ostream)
  "Serializes a message object of type '<SyncFlagControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncFlagControl-request>) istream)
  "Deserializes a message object of type '<SyncFlagControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncFlagControl-request>)))
  "Returns string type for a service object of type '<SyncFlagControl-request>"
  "dji_sdk/SyncFlagControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncFlagControl-request)))
  "Returns string type for a service object of type 'SyncFlagControl-request"
  "dji_sdk/SyncFlagControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncFlagControl-request>)))
  "Returns md5sum for a message object of type '<SyncFlagControl-request>"
  "848e0c067edd66153227f7c9aad5132b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncFlagControl-request)))
  "Returns md5sum for a message object of type 'SyncFlagControl-request"
  "848e0c067edd66153227f7c9aad5132b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncFlagControl-request>)))
  "Returns full string definition for message of type '<SyncFlagControl-request>"
  (cl:format cl:nil "uint32 frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncFlagControl-request)))
  "Returns full string definition for message of type 'SyncFlagControl-request"
  (cl:format cl:nil "uint32 frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncFlagControl-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncFlagControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncFlagControl-request
    (cl:cons ':frequency (frequency msg))
))
;//! \htmlinclude SyncFlagControl-response.msg.html

(cl:defclass <SyncFlagControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SyncFlagControl-response (<SyncFlagControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SyncFlagControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SyncFlagControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<SyncFlagControl-response> is deprecated: use dji_sdk-srv:SyncFlagControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <SyncFlagControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SyncFlagControl-response>) ostream)
  "Serializes a message object of type '<SyncFlagControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SyncFlagControl-response>) istream)
  "Deserializes a message object of type '<SyncFlagControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SyncFlagControl-response>)))
  "Returns string type for a service object of type '<SyncFlagControl-response>"
  "dji_sdk/SyncFlagControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncFlagControl-response)))
  "Returns string type for a service object of type 'SyncFlagControl-response"
  "dji_sdk/SyncFlagControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SyncFlagControl-response>)))
  "Returns md5sum for a message object of type '<SyncFlagControl-response>"
  "848e0c067edd66153227f7c9aad5132b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SyncFlagControl-response)))
  "Returns md5sum for a message object of type 'SyncFlagControl-response"
  "848e0c067edd66153227f7c9aad5132b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SyncFlagControl-response>)))
  "Returns full string definition for message of type '<SyncFlagControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SyncFlagControl-response)))
  "Returns full string definition for message of type 'SyncFlagControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SyncFlagControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SyncFlagControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SyncFlagControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SyncFlagControl)))
  'SyncFlagControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SyncFlagControl)))
  'SyncFlagControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SyncFlagControl)))
  "Returns string type for a service object of type '<SyncFlagControl>"
  "dji_sdk/SyncFlagControl")