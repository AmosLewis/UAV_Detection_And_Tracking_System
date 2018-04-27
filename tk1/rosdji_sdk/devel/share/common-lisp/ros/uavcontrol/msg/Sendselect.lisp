; Auto-generated. Do not edit!


(cl:in-package uavcontrol-msg)


;//! \htmlinclude Sendselect.msg.html

(cl:defclass <Sendselect> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0)
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass Sendselect (<Sendselect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sendselect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sendselect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name uavcontrol-msg:<Sendselect> is deprecated: use uavcontrol-msg:Sendselect instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Sendselect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:x-val is deprecated.  Use uavcontrol-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Sendselect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:y-val is deprecated.  Use uavcontrol-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Sendselect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:width-val is deprecated.  Use uavcontrol-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Sendselect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader uavcontrol-msg:height-val is deprecated.  Use uavcontrol-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sendselect>) ostream)
  "Serializes a message object of type '<Sendselect>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sendselect>) istream)
  "Deserializes a message object of type '<Sendselect>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sendselect>)))
  "Returns string type for a message object of type '<Sendselect>"
  "uavcontrol/Sendselect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sendselect)))
  "Returns string type for a message object of type 'Sendselect"
  "uavcontrol/Sendselect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sendselect>)))
  "Returns md5sum for a message object of type '<Sendselect>"
  "4425f1067abc7ec2e487d28194eccff4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sendselect)))
  "Returns md5sum for a message object of type 'Sendselect"
  "4425f1067abc7ec2e487d28194eccff4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sendselect>)))
  "Returns full string definition for message of type '<Sendselect>"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sendselect)))
  "Returns full string definition for message of type 'Sendselect"
  (cl:format cl:nil "int32 x~%int32 y~%int32 width~%int32 height~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sendselect>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sendselect>))
  "Converts a ROS message object to a list"
  (cl:list 'Sendselect
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
