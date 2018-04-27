; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionStart-request.msg.html

(cl:defclass <MissionStart-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionStart-request (<MissionStart-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStart-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStart-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionStart-request> is deprecated: use dji_sdk-srv:MissionStart-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStart-request>) ostream)
  "Serializes a message object of type '<MissionStart-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStart-request>) istream)
  "Deserializes a message object of type '<MissionStart-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStart-request>)))
  "Returns string type for a service object of type '<MissionStart-request>"
  "dji_sdk/MissionStartRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStart-request)))
  "Returns string type for a service object of type 'MissionStart-request"
  "dji_sdk/MissionStartRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStart-request>)))
  "Returns md5sum for a message object of type '<MissionStart-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStart-request)))
  "Returns md5sum for a message object of type 'MissionStart-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStart-request>)))
  "Returns full string definition for message of type '<MissionStart-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStart-request)))
  "Returns full string definition for message of type 'MissionStart-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStart-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStart-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStart-request
))
;//! \htmlinclude MissionStart-response.msg.html

(cl:defclass <MissionStart-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionStart-response (<MissionStart-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStart-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStart-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionStart-response> is deprecated: use dji_sdk-srv:MissionStart-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionStart-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStart-response>) ostream)
  "Serializes a message object of type '<MissionStart-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStart-response>) istream)
  "Deserializes a message object of type '<MissionStart-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStart-response>)))
  "Returns string type for a service object of type '<MissionStart-response>"
  "dji_sdk/MissionStartResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStart-response)))
  "Returns string type for a service object of type 'MissionStart-response"
  "dji_sdk/MissionStartResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStart-response>)))
  "Returns md5sum for a message object of type '<MissionStart-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStart-response)))
  "Returns md5sum for a message object of type 'MissionStart-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStart-response>)))
  "Returns full string definition for message of type '<MissionStart-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStart-response)))
  "Returns full string definition for message of type 'MissionStart-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStart-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStart-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStart-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionStart)))
  'MissionStart-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionStart)))
  'MissionStart-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStart)))
  "Returns string type for a service object of type '<MissionStart>"
  "dji_sdk/MissionStart")