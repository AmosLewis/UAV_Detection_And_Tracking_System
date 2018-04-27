; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionCancel-request.msg.html

(cl:defclass <MissionCancel-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionCancel-request (<MissionCancel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCancel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCancel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionCancel-request> is deprecated: use dji_sdk-srv:MissionCancel-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCancel-request>) ostream)
  "Serializes a message object of type '<MissionCancel-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCancel-request>) istream)
  "Deserializes a message object of type '<MissionCancel-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCancel-request>)))
  "Returns string type for a service object of type '<MissionCancel-request>"
  "dji_sdk/MissionCancelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCancel-request)))
  "Returns string type for a service object of type 'MissionCancel-request"
  "dji_sdk/MissionCancelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCancel-request>)))
  "Returns md5sum for a message object of type '<MissionCancel-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCancel-request)))
  "Returns md5sum for a message object of type 'MissionCancel-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCancel-request>)))
  "Returns full string definition for message of type '<MissionCancel-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCancel-request)))
  "Returns full string definition for message of type 'MissionCancel-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCancel-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCancel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCancel-request
))
;//! \htmlinclude MissionCancel-response.msg.html

(cl:defclass <MissionCancel-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionCancel-response (<MissionCancel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionCancel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionCancel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionCancel-response> is deprecated: use dji_sdk-srv:MissionCancel-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionCancel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionCancel-response>) ostream)
  "Serializes a message object of type '<MissionCancel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionCancel-response>) istream)
  "Deserializes a message object of type '<MissionCancel-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionCancel-response>)))
  "Returns string type for a service object of type '<MissionCancel-response>"
  "dji_sdk/MissionCancelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCancel-response)))
  "Returns string type for a service object of type 'MissionCancel-response"
  "dji_sdk/MissionCancelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionCancel-response>)))
  "Returns md5sum for a message object of type '<MissionCancel-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionCancel-response)))
  "Returns md5sum for a message object of type 'MissionCancel-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionCancel-response>)))
  "Returns full string definition for message of type '<MissionCancel-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionCancel-response)))
  "Returns full string definition for message of type 'MissionCancel-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionCancel-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionCancel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionCancel-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionCancel)))
  'MissionCancel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionCancel)))
  'MissionCancel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionCancel)))
  "Returns string type for a service object of type '<MissionCancel>"
  "dji_sdk/MissionCancel")