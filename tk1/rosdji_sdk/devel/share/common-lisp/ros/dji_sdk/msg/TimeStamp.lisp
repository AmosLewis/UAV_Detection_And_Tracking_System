; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude TimeStamp.msg.html

(cl:defclass <TimeStamp> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time
    :reader time
    :initarg :time
    :type cl:integer
    :initform 0)
   (time_ns
    :reader time_ns
    :initarg :time_ns
    :type cl:integer
    :initform 0)
   (sync_flag
    :reader sync_flag
    :initarg :sync_flag
    :type cl:fixnum
    :initform 0))
)

(cl:defclass TimeStamp (<TimeStamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TimeStamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TimeStamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<TimeStamp> is deprecated: use dji_sdk-msg:TimeStamp instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:header-val is deprecated.  Use dji_sdk-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:time-val is deprecated.  Use dji_sdk-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'time_ns-val :lambda-list '(m))
(cl:defmethod time_ns-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:time_ns-val is deprecated.  Use dji_sdk-msg:time_ns instead.")
  (time_ns m))

(cl:ensure-generic-function 'sync_flag-val :lambda-list '(m))
(cl:defmethod sync_flag-val ((m <TimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:sync_flag-val is deprecated.  Use dji_sdk-msg:sync_flag instead.")
  (sync_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TimeStamp>) ostream)
  "Serializes a message object of type '<TimeStamp>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_ns)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sync_flag)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TimeStamp>) istream)
  "Deserializes a message object of type '<TimeStamp>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'time_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'time_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'time_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'time_ns)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sync_flag)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TimeStamp>)))
  "Returns string type for a message object of type '<TimeStamp>"
  "dji_sdk/TimeStamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TimeStamp)))
  "Returns string type for a message object of type 'TimeStamp"
  "dji_sdk/TimeStamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TimeStamp>)))
  "Returns md5sum for a message object of type '<TimeStamp>"
  "cdf94dfbb71b3e4aec0ba55884cec090")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TimeStamp)))
  "Returns md5sum for a message object of type 'TimeStamp"
  "cdf94dfbb71b3e4aec0ba55884cec090")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TimeStamp>)))
  "Returns full string definition for message of type '<TimeStamp>"
  (cl:format cl:nil "Header header~%~%uint32 time~%uint32 time_ns~%uint8 sync_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TimeStamp)))
  "Returns full string definition for message of type 'TimeStamp"
  (cl:format cl:nil "Header header~%~%uint32 time~%uint32 time_ns~%uint8 sync_flag~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TimeStamp>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TimeStamp>))
  "Converts a ROS message object to a list"
  (cl:list 'TimeStamp
    (cl:cons ':header (header msg))
    (cl:cons ':time (time msg))
    (cl:cons ':time_ns (time_ns msg))
    (cl:cons ':sync_flag (sync_flag msg))
))
