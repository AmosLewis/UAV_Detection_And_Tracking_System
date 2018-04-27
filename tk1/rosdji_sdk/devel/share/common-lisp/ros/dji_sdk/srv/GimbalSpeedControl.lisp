; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude GimbalSpeedControl-request.msg.html

(cl:defclass <GimbalSpeedControl-request> (roslisp-msg-protocol:ros-message)
  ((yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:fixnum
    :initform 0)
   (roll_rate
    :reader roll_rate
    :initarg :roll_rate
    :type cl:fixnum
    :initform 0)
   (pitch_rate
    :reader pitch_rate
    :initarg :pitch_rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GimbalSpeedControl-request (<GimbalSpeedControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalSpeedControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalSpeedControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GimbalSpeedControl-request> is deprecated: use dji_sdk-srv:GimbalSpeedControl-request instead.")))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <GimbalSpeedControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw_rate-val is deprecated.  Use dji_sdk-srv:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'roll_rate-val :lambda-list '(m))
(cl:defmethod roll_rate-val ((m <GimbalSpeedControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:roll_rate-val is deprecated.  Use dji_sdk-srv:roll_rate instead.")
  (roll_rate m))

(cl:ensure-generic-function 'pitch_rate-val :lambda-list '(m))
(cl:defmethod pitch_rate-val ((m <GimbalSpeedControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:pitch_rate-val is deprecated.  Use dji_sdk-srv:pitch_rate instead.")
  (pitch_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalSpeedControl-request>) ostream)
  "Serializes a message object of type '<GimbalSpeedControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'yaw_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roll_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch_rate)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalSpeedControl-request>) istream)
  "Deserializes a message object of type '<GimbalSpeedControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw_rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll_rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch_rate) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalSpeedControl-request>)))
  "Returns string type for a service object of type '<GimbalSpeedControl-request>"
  "dji_sdk/GimbalSpeedControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalSpeedControl-request)))
  "Returns string type for a service object of type 'GimbalSpeedControl-request"
  "dji_sdk/GimbalSpeedControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalSpeedControl-request>)))
  "Returns md5sum for a message object of type '<GimbalSpeedControl-request>"
  "9faf8f80ceb051ef1bc0985e17a03fa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalSpeedControl-request)))
  "Returns md5sum for a message object of type 'GimbalSpeedControl-request"
  "9faf8f80ceb051ef1bc0985e17a03fa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalSpeedControl-request>)))
  "Returns full string definition for message of type '<GimbalSpeedControl-request>"
  (cl:format cl:nil "~%~%int16 yaw_rate~%int16 roll_rate~%int16 pitch_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalSpeedControl-request)))
  "Returns full string definition for message of type 'GimbalSpeedControl-request"
  (cl:format cl:nil "~%~%int16 yaw_rate~%int16 roll_rate~%int16 pitch_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalSpeedControl-request>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalSpeedControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalSpeedControl-request
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':roll_rate (roll_rate msg))
    (cl:cons ':pitch_rate (pitch_rate msg))
))
;//! \htmlinclude GimbalSpeedControl-response.msg.html

(cl:defclass <GimbalSpeedControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GimbalSpeedControl-response (<GimbalSpeedControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalSpeedControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalSpeedControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GimbalSpeedControl-response> is deprecated: use dji_sdk-srv:GimbalSpeedControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GimbalSpeedControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalSpeedControl-response>) ostream)
  "Serializes a message object of type '<GimbalSpeedControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalSpeedControl-response>) istream)
  "Deserializes a message object of type '<GimbalSpeedControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalSpeedControl-response>)))
  "Returns string type for a service object of type '<GimbalSpeedControl-response>"
  "dji_sdk/GimbalSpeedControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalSpeedControl-response)))
  "Returns string type for a service object of type 'GimbalSpeedControl-response"
  "dji_sdk/GimbalSpeedControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalSpeedControl-response>)))
  "Returns md5sum for a message object of type '<GimbalSpeedControl-response>"
  "9faf8f80ceb051ef1bc0985e17a03fa5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalSpeedControl-response)))
  "Returns md5sum for a message object of type 'GimbalSpeedControl-response"
  "9faf8f80ceb051ef1bc0985e17a03fa5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalSpeedControl-response>)))
  "Returns full string definition for message of type '<GimbalSpeedControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalSpeedControl-response)))
  "Returns full string definition for message of type 'GimbalSpeedControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalSpeedControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalSpeedControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalSpeedControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GimbalSpeedControl)))
  'GimbalSpeedControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GimbalSpeedControl)))
  'GimbalSpeedControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalSpeedControl)))
  "Returns string type for a service object of type '<GimbalSpeedControl>"
  "dji_sdk/GimbalSpeedControl")