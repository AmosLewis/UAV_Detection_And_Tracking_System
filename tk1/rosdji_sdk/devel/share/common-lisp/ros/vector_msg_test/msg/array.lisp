; Auto-generated. Do not edit!


(cl:in-package vector_msg_test-msg)


;//! \htmlinclude array.msg.html

(cl:defclass <array> (roslisp-msg-protocol:ros-message)
  ((count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (myadd
    :reader myadd
    :initarg :myadd
    :type (cl:vector vector_msg_test-msg:add)
   :initform (cl:make-array 0 :element-type 'vector_msg_test-msg:add :initial-element (cl:make-instance 'vector_msg_test-msg:add))))
)

(cl:defclass array (<array>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <array>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'array)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vector_msg_test-msg:<array> is deprecated: use vector_msg_test-msg:array instead.")))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msg_test-msg:count-val is deprecated.  Use vector_msg_test-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'myadd-val :lambda-list '(m))
(cl:defmethod myadd-val ((m <array>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vector_msg_test-msg:myadd-val is deprecated.  Use vector_msg_test-msg:myadd instead.")
  (myadd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <array>) ostream)
  "Serializes a message object of type '<array>"
  (cl:let* ((signed (cl:slot-value msg 'count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'myadd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'myadd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <array>) istream)
  "Deserializes a message object of type '<array>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'myadd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'myadd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vector_msg_test-msg:add))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<array>)))
  "Returns string type for a message object of type '<array>"
  "vector_msg_test/array")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'array)))
  "Returns string type for a message object of type 'array"
  "vector_msg_test/array")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<array>)))
  "Returns md5sum for a message object of type '<array>"
  "33671369878db750f98286495a6efd16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'array)))
  "Returns md5sum for a message object of type 'array"
  "33671369878db750f98286495a6efd16")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<array>)))
  "Returns full string definition for message of type '<array>"
  (cl:format cl:nil "int32 count~%add[] myadd~%~%================================================================================~%MSG: vector_msg_test/add~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'array)))
  "Returns full string definition for message of type 'array"
  (cl:format cl:nil "int32 count~%add[] myadd~%~%================================================================================~%MSG: vector_msg_test/add~%int32 a~%int32 b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <array>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'myadd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <array>))
  "Converts a ROS message object to a list"
  (cl:list 'array
    (cl:cons ':count (count msg))
    (cl:cons ':myadd (myadd msg))
))
