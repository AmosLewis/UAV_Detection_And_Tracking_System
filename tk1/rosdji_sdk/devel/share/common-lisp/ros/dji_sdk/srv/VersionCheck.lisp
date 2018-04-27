; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude VersionCheck-request.msg.html

(cl:defclass <VersionCheck-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass VersionCheck-request (<VersionCheck-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionCheck-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionCheck-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VersionCheck-request> is deprecated: use dji_sdk-srv:VersionCheck-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionCheck-request>) ostream)
  "Serializes a message object of type '<VersionCheck-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionCheck-request>) istream)
  "Deserializes a message object of type '<VersionCheck-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionCheck-request>)))
  "Returns string type for a service object of type '<VersionCheck-request>"
  "dji_sdk/VersionCheckRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionCheck-request)))
  "Returns string type for a service object of type 'VersionCheck-request"
  "dji_sdk/VersionCheckRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionCheck-request>)))
  "Returns md5sum for a message object of type '<VersionCheck-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionCheck-request)))
  "Returns md5sum for a message object of type 'VersionCheck-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionCheck-request>)))
  "Returns full string definition for message of type '<VersionCheck-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionCheck-request)))
  "Returns full string definition for message of type 'VersionCheck-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionCheck-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionCheck-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionCheck-request
))
;//! \htmlinclude VersionCheck-response.msg.html

(cl:defclass <VersionCheck-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VersionCheck-response (<VersionCheck-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VersionCheck-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VersionCheck-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VersionCheck-response> is deprecated: use dji_sdk-srv:VersionCheck-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VersionCheck-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VersionCheck-response>) ostream)
  "Serializes a message object of type '<VersionCheck-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VersionCheck-response>) istream)
  "Deserializes a message object of type '<VersionCheck-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VersionCheck-response>)))
  "Returns string type for a service object of type '<VersionCheck-response>"
  "dji_sdk/VersionCheckResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionCheck-response)))
  "Returns string type for a service object of type 'VersionCheck-response"
  "dji_sdk/VersionCheckResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VersionCheck-response>)))
  "Returns md5sum for a message object of type '<VersionCheck-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VersionCheck-response)))
  "Returns md5sum for a message object of type 'VersionCheck-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VersionCheck-response>)))
  "Returns full string definition for message of type '<VersionCheck-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VersionCheck-response)))
  "Returns full string definition for message of type 'VersionCheck-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VersionCheck-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VersionCheck-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VersionCheck-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VersionCheck)))
  'VersionCheck-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VersionCheck)))
  'VersionCheck-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VersionCheck)))
  "Returns string type for a service object of type '<VersionCheck>"
  "dji_sdk/VersionCheck")