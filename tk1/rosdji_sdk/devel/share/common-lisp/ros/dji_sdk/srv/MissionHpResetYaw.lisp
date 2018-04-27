; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpResetYaw-request.msg.html

(cl:defclass <MissionHpResetYaw-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionHpResetYaw-request (<MissionHpResetYaw-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpResetYaw-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpResetYaw-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpResetYaw-request> is deprecated: use dji_sdk-srv:MissionHpResetYaw-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpResetYaw-request>) ostream)
  "Serializes a message object of type '<MissionHpResetYaw-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpResetYaw-request>) istream)
  "Deserializes a message object of type '<MissionHpResetYaw-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpResetYaw-request>)))
  "Returns string type for a service object of type '<MissionHpResetYaw-request>"
  "dji_sdk/MissionHpResetYawRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpResetYaw-request)))
  "Returns string type for a service object of type 'MissionHpResetYaw-request"
  "dji_sdk/MissionHpResetYawRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpResetYaw-request>)))
  "Returns md5sum for a message object of type '<MissionHpResetYaw-request>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpResetYaw-request)))
  "Returns md5sum for a message object of type 'MissionHpResetYaw-request"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpResetYaw-request>)))
  "Returns full string definition for message of type '<MissionHpResetYaw-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpResetYaw-request)))
  "Returns full string definition for message of type 'MissionHpResetYaw-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpResetYaw-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpResetYaw-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpResetYaw-request
))
;//! \htmlinclude MissionHpResetYaw-response.msg.html

(cl:defclass <MissionHpResetYaw-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionHpResetYaw-response (<MissionHpResetYaw-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpResetYaw-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpResetYaw-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpResetYaw-response> is deprecated: use dji_sdk-srv:MissionHpResetYaw-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpResetYaw-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpResetYaw-response>) ostream)
  "Serializes a message object of type '<MissionHpResetYaw-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpResetYaw-response>) istream)
  "Deserializes a message object of type '<MissionHpResetYaw-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpResetYaw-response>)))
  "Returns string type for a service object of type '<MissionHpResetYaw-response>"
  "dji_sdk/MissionHpResetYawResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpResetYaw-response)))
  "Returns string type for a service object of type 'MissionHpResetYaw-response"
  "dji_sdk/MissionHpResetYawResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpResetYaw-response>)))
  "Returns md5sum for a message object of type '<MissionHpResetYaw-response>"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpResetYaw-response)))
  "Returns md5sum for a message object of type 'MissionHpResetYaw-response"
  "eb13ac1f1354ccecb7941ee8fa2192e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpResetYaw-response>)))
  "Returns full string definition for message of type '<MissionHpResetYaw-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpResetYaw-response)))
  "Returns full string definition for message of type 'MissionHpResetYaw-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpResetYaw-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpResetYaw-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpResetYaw-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpResetYaw)))
  'MissionHpResetYaw-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpResetYaw)))
  'MissionHpResetYaw-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpResetYaw)))
  "Returns string type for a service object of type '<MissionHpResetYaw>"
  "dji_sdk/MissionHpResetYaw")