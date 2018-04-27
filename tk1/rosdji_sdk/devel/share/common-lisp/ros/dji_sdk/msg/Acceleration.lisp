; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude Acceleration.msg.html

(cl:defclass <Acceleration> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (ts
    :reader ts
    :initarg :ts
    :type cl:integer
    :initform 0)
   (ax
    :reader ax
    :initarg :ax
    :type cl:float
    :initform 0.0)
   (ay
    :reader ay
    :initarg :ay
    :type cl:float
    :initform 0.0)
   (az
    :reader az
    :initarg :az
    :type cl:float
    :initform 0.0))
)

(cl:defclass Acceleration (<Acceleration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Acceleration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Acceleration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<Acceleration> is deprecated: use dji_sdk-msg:Acceleration instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:header-val is deprecated.  Use dji_sdk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'ts-val :lambda-list '(m))
(cl:defmethod ts-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:ts-val is deprecated.  Use dji_sdk-msg:ts instead.")
  (ts m))

(cl:ensure-generic-function 'ax-val :lambda-list '(m))
(cl:defmethod ax-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:ax-val is deprecated.  Use dji_sdk-msg:ax instead.")
  (ax m))

(cl:ensure-generic-function 'ay-val :lambda-list '(m))
(cl:defmethod ay-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:ay-val is deprecated.  Use dji_sdk-msg:ay instead.")
  (ay m))

(cl:ensure-generic-function 'az-val :lambda-list '(m))
(cl:defmethod az-val ((m <Acceleration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:az-val is deprecated.  Use dji_sdk-msg:az instead.")
  (az m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Acceleration>) ostream)
  "Serializes a message object of type '<Acceleration>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'ts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'az))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Acceleration>) istream)
  "Deserializes a message object of type '<Acceleration>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ts) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ay) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'az) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Acceleration>)))
  "Returns string type for a message object of type '<Acceleration>"
  "dji_sdk/Acceleration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Acceleration)))
  "Returns string type for a message object of type 'Acceleration"
  "dji_sdk/Acceleration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Acceleration>)))
  "Returns md5sum for a message object of type '<Acceleration>"
  "5de5cfee671950d30a03b944f0d1555c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Acceleration)))
  "Returns md5sum for a message object of type 'Acceleration"
  "5de5cfee671950d30a03b944f0d1555c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Acceleration>)))
  "Returns full string definition for message of type '<Acceleration>"
  (cl:format cl:nil "# acceleration~%Header header~%int32 ts~%float32 ax~%float32 ay~%float32 az~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Acceleration)))
  "Returns full string definition for message of type 'Acceleration"
  (cl:format cl:nil "# acceleration~%Header header~%int32 ts~%float32 ax~%float32 ay~%float32 az~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Acceleration>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Acceleration>))
  "Converts a ROS message object to a list"
  (cl:list 'Acceleration
    (cl:cons ':header (header msg))
    (cl:cons ':ts (ts msg))
    (cl:cons ':ax (ax msg))
    (cl:cons ':ay (ay msg))
    (cl:cons ':az (az msg))
))
