; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude GimbalAngleControl-request.msg.html

(cl:defclass <GimbalAngleControl-request> (roslisp-msg-protocol:ros-message)
  ((yaw
    :reader yaw
    :initarg :yaw
    :type cl:fixnum
    :initform 0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:fixnum
    :initform 0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0)
   (absolute_or_incremental
    :reader absolute_or_incremental
    :initarg :absolute_or_incremental
    :type cl:boolean
    :initform cl:nil)
   (yaw_cmd_ignore
    :reader yaw_cmd_ignore
    :initarg :yaw_cmd_ignore
    :type cl:boolean
    :initform cl:nil)
   (roll_cmd_ignore
    :reader roll_cmd_ignore
    :initarg :roll_cmd_ignore
    :type cl:boolean
    :initform cl:nil)
   (pitch_cmd_ignore
    :reader pitch_cmd_ignore
    :initarg :pitch_cmd_ignore
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GimbalAngleControl-request (<GimbalAngleControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalAngleControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalAngleControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GimbalAngleControl-request> is deprecated: use dji_sdk-srv:GimbalAngleControl-request instead.")))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw-val is deprecated.  Use dji_sdk-srv:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:roll-val is deprecated.  Use dji_sdk-srv:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:pitch-val is deprecated.  Use dji_sdk-srv:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:duration-val is deprecated.  Use dji_sdk-srv:duration instead.")
  (duration m))

(cl:ensure-generic-function 'absolute_or_incremental-val :lambda-list '(m))
(cl:defmethod absolute_or_incremental-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:absolute_or_incremental-val is deprecated.  Use dji_sdk-srv:absolute_or_incremental instead.")
  (absolute_or_incremental m))

(cl:ensure-generic-function 'yaw_cmd_ignore-val :lambda-list '(m))
(cl:defmethod yaw_cmd_ignore-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:yaw_cmd_ignore-val is deprecated.  Use dji_sdk-srv:yaw_cmd_ignore instead.")
  (yaw_cmd_ignore m))

(cl:ensure-generic-function 'roll_cmd_ignore-val :lambda-list '(m))
(cl:defmethod roll_cmd_ignore-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:roll_cmd_ignore-val is deprecated.  Use dji_sdk-srv:roll_cmd_ignore instead.")
  (roll_cmd_ignore m))

(cl:ensure-generic-function 'pitch_cmd_ignore-val :lambda-list '(m))
(cl:defmethod pitch_cmd_ignore-val ((m <GimbalAngleControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:pitch_cmd_ignore-val is deprecated.  Use dji_sdk-srv:pitch_cmd_ignore instead.")
  (pitch_cmd_ignore m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalAngleControl-request>) ostream)
  "Serializes a message object of type '<GimbalAngleControl-request>"
  (cl:let* ((signed (cl:slot-value msg 'yaw)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'roll)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pitch)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'absolute_or_incremental) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'yaw_cmd_ignore) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'roll_cmd_ignore) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pitch_cmd_ignore) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalAngleControl-request>) istream)
  "Deserializes a message object of type '<GimbalAngleControl-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'yaw) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pitch) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'absolute_or_incremental) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'yaw_cmd_ignore) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'roll_cmd_ignore) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pitch_cmd_ignore) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalAngleControl-request>)))
  "Returns string type for a service object of type '<GimbalAngleControl-request>"
  "dji_sdk/GimbalAngleControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAngleControl-request)))
  "Returns string type for a service object of type 'GimbalAngleControl-request"
  "dji_sdk/GimbalAngleControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalAngleControl-request>)))
  "Returns md5sum for a message object of type '<GimbalAngleControl-request>"
  "355893b815576f75c0061dddd133c146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalAngleControl-request)))
  "Returns md5sum for a message object of type 'GimbalAngleControl-request"
  "355893b815576f75c0061dddd133c146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalAngleControl-request>)))
  "Returns full string definition for message of type '<GimbalAngleControl-request>"
  (cl:format cl:nil "~%~%~%int16 yaw~%int16 roll~%int16 pitch~%int16 duration~%~%bool absolute_or_incremental~%bool yaw_cmd_ignore~%bool roll_cmd_ignore~%bool pitch_cmd_ignore~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalAngleControl-request)))
  "Returns full string definition for message of type 'GimbalAngleControl-request"
  (cl:format cl:nil "~%~%~%int16 yaw~%int16 roll~%int16 pitch~%int16 duration~%~%bool absolute_or_incremental~%bool yaw_cmd_ignore~%bool roll_cmd_ignore~%bool pitch_cmd_ignore~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalAngleControl-request>))
  (cl:+ 0
     2
     2
     2
     2
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalAngleControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalAngleControl-request
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':absolute_or_incremental (absolute_or_incremental msg))
    (cl:cons ':yaw_cmd_ignore (yaw_cmd_ignore msg))
    (cl:cons ':roll_cmd_ignore (roll_cmd_ignore msg))
    (cl:cons ':pitch_cmd_ignore (pitch_cmd_ignore msg))
))
;//! \htmlinclude GimbalAngleControl-response.msg.html

(cl:defclass <GimbalAngleControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GimbalAngleControl-response (<GimbalAngleControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GimbalAngleControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GimbalAngleControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<GimbalAngleControl-response> is deprecated: use dji_sdk-srv:GimbalAngleControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GimbalAngleControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GimbalAngleControl-response>) ostream)
  "Serializes a message object of type '<GimbalAngleControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GimbalAngleControl-response>) istream)
  "Deserializes a message object of type '<GimbalAngleControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GimbalAngleControl-response>)))
  "Returns string type for a service object of type '<GimbalAngleControl-response>"
  "dji_sdk/GimbalAngleControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAngleControl-response)))
  "Returns string type for a service object of type 'GimbalAngleControl-response"
  "dji_sdk/GimbalAngleControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GimbalAngleControl-response>)))
  "Returns md5sum for a message object of type '<GimbalAngleControl-response>"
  "355893b815576f75c0061dddd133c146")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GimbalAngleControl-response)))
  "Returns md5sum for a message object of type 'GimbalAngleControl-response"
  "355893b815576f75c0061dddd133c146")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GimbalAngleControl-response>)))
  "Returns full string definition for message of type '<GimbalAngleControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GimbalAngleControl-response)))
  "Returns full string definition for message of type 'GimbalAngleControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GimbalAngleControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GimbalAngleControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GimbalAngleControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GimbalAngleControl)))
  'GimbalAngleControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GimbalAngleControl)))
  'GimbalAngleControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GimbalAngleControl)))
  "Returns string type for a service object of type '<GimbalAngleControl>"
  "dji_sdk/GimbalAngleControl")