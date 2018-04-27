; Auto-generated. Do not edit!


(cl:in-package vector_msg_test-msg)


;//! \htmlinclude add.msg.html

(cl:defclass <add> (roslisp-msg-protocol:ros-message)
  ((a
    :reader a
    :initarg :a
    :type cl:integer
    :initform 0)
   (b
    :reader b
    :initarg :b
    :type cl:integer
    :initform 0))
)

(cl:defclass add (<add>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msg_test-msg:<add> is deprecated: use vector_msg_test-msg:add instead.")))

(cl:ensure-generic-function 'a-val :lambda-list '(m))
(cl:defmethod a-val ((m <add>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msg_test-msg:a-val is deprecated.  Use vector_msg_test-msg:a instead.")
  (a m))

(cl:ensure-generic-function 'b-val :lambda-list '(m))
(cl:defmethod b-val ((m <add>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msg_test-msg:b-val is deprecated.  Use vector_msg_test-msg:b instead.")
  (b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add>) ostream)
  "Serializes a message object of type '<add>"
  (cl:let* ((signed (cl:slot-value msg 'a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add>) istream)
  "Deserializes a message object of type '<add>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add>)))
  "Returns string type for a message object of type '<add>"
  "vector_msg_test/add")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add)))
  "Returns string type for a message object of type 'add"
  "vector_msg_test/add")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add>)))
  "Returns md5sum for a message object of type '<add>"
  "ef8322123148e475e3e93a1f609b2f70")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add)))
  "Returns md5sum for a message object of type 'add"
  "ef8322123148e475e3e93a1f609b2f70")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add>)))
  "Returns full string definition for message of type '<add>"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add)))
  "Returns full string definition for message of type 'add"
  (cl:format cl:nil "int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add>))
  "Converts a ROS message object to a list"
  (cl:list 'add
    (cl:cons ':a (a msg))
    (cl:cons ':b (b msg))
))
