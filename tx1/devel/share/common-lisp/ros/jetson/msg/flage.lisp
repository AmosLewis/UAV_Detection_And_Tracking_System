; Auto-generated. Do not edit!


(cl:in-package jetson-msg)


;//! \htmlinclude flage.msg.html

(cl:defclass <flage> (roslisp-msg-protocol:ros-message)
  ((flagTest
    :reader flagTest
    :initarg :flagTest
    :type cl:integer
    :initform 0))
)

(cl:defclass flage (<flage>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <flage>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'flage)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jetson-msg:<flage> is deprecated: use jetson-msg:flage instead.")))

(cl:ensure-generic-function 'flagTest-val :lambda-list '(m))
(cl:defmethod flagTest-val ((m <flage>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jetson-msg:flagTest-val is deprecated.  Use jetson-msg:flagTest instead.")
  (flagTest m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <flage>) ostream)
  "Serializes a message object of type '<flage>"
  (cl:let* ((signed (cl:slot-value msg 'flagTest)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <flage>) istream)
  "Deserializes a message object of type '<flage>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flagTest) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<flage>)))
  "Returns string type for a message object of type '<flage>"
  "jetson/flage")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'flage)))
  "Returns string type for a message object of type 'flage"
  "jetson/flage")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<flage>)))
  "Returns md5sum for a message object of type '<flage>"
  "be229d04a232400d9f235bb6eeba2e7d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'flage)))
  "Returns md5sum for a message object of type 'flage"
  "be229d04a232400d9f235bb6eeba2e7d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<flage>)))
  "Returns full string definition for message of type '<flage>"
  (cl:format cl:nil "int32 flagTest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'flage)))
  "Returns full string definition for message of type 'flage"
  (cl:format cl:nil "int32 flagTest~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <flage>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <flage>))
  "Converts a ROS message object to a list"
  (cl:list 'flage
    (cl:cons ':flagTest (flagTest msg))
))
