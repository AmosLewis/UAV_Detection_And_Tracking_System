; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude CameraActionControl-request.msg.html

(cl:defclass <CameraActionControl-request> (roslisp-msg-protocol:ros-message)
  ((camera_action
    :reader camera_action
    :initarg :camera_action
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CameraActionControl-request (<CameraActionControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraActionControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraActionControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<CameraActionControl-request> is deprecated: use dji_sdk-srv:CameraActionControl-request instead.")))

(cl:ensure-generic-function 'camera_action-val :lambda-list '(m))
(cl:defmethod camera_action-val ((m <CameraActionControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:camera_action-val is deprecated.  Use dji_sdk-srv:camera_action instead.")
  (camera_action m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraActionControl-request>) ostream)
  "Serializes a message object of type '<CameraActionControl-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_action)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraActionControl-request>) istream)
  "Deserializes a message object of type '<CameraActionControl-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'camera_action)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraActionControl-request>)))
  "Returns string type for a service object of type '<CameraActionControl-request>"
  "dji_sdk/CameraActionControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraActionControl-request)))
  "Returns string type for a service object of type 'CameraActionControl-request"
  "dji_sdk/CameraActionControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraActionControl-request>)))
  "Returns md5sum for a message object of type '<CameraActionControl-request>"
  "77629488af3edd3adaa94bf250d692c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraActionControl-request)))
  "Returns md5sum for a message object of type 'CameraActionControl-request"
  "77629488af3edd3adaa94bf250d692c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraActionControl-request>)))
  "Returns full string definition for message of type '<CameraActionControl-request>"
  (cl:format cl:nil "~%~%~%uint8 camera_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraActionControl-request)))
  "Returns full string definition for message of type 'CameraActionControl-request"
  (cl:format cl:nil "~%~%~%uint8 camera_action~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraActionControl-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraActionControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraActionControl-request
    (cl:cons ':camera_action (camera_action msg))
))
;//! \htmlinclude CameraActionControl-response.msg.html

(cl:defclass <CameraActionControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraActionControl-response (<CameraActionControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraActionControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraActionControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<CameraActionControl-response> is deprecated: use dji_sdk-srv:CameraActionControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CameraActionControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraActionControl-response>) ostream)
  "Serializes a message object of type '<CameraActionControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraActionControl-response>) istream)
  "Deserializes a message object of type '<CameraActionControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraActionControl-response>)))
  "Returns string type for a service object of type '<CameraActionControl-response>"
  "dji_sdk/CameraActionControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraActionControl-response)))
  "Returns string type for a service object of type 'CameraActionControl-response"
  "dji_sdk/CameraActionControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraActionControl-response>)))
  "Returns md5sum for a message object of type '<CameraActionControl-response>"
  "77629488af3edd3adaa94bf250d692c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraActionControl-response)))
  "Returns md5sum for a message object of type 'CameraActionControl-response"
  "77629488af3edd3adaa94bf250d692c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraActionControl-response>)))
  "Returns full string definition for message of type '<CameraActionControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraActionControl-response)))
  "Returns full string definition for message of type 'CameraActionControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraActionControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraActionControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraActionControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraActionControl)))
  'CameraActionControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraActionControl)))
  'CameraActionControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraActionControl)))
  "Returns string type for a service object of type '<CameraActionControl>"
  "dji_sdk/CameraActionControl")