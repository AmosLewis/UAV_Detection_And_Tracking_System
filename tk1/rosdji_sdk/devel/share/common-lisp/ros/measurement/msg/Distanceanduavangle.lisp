; Auto-generated. Do not edit!


(cl:in-package measurement-msg)


;//! \htmlinclude Distanceanduavangle.msg.html

(cl:defclass <Distanceanduavangle> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:float
    :initform 0.0)
   (uavangle
    :reader uavangle
    :initarg :uavangle
    :type cl:float
    :initform 0.0))
)

(cl:defclass Distanceanduavangle (<Distanceanduavangle>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Distanceanduavangle>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Distanceanduavangle)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name measurement-msg:<Distanceanduavangle> is deprecated: use measurement-msg:Distanceanduavangle instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <Distanceanduavangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader measurement-msg:distance-val is deprecated.  Use measurement-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'uavangle-val :lambda-list '(m))
(cl:defmethod uavangle-val ((m <Distanceanduavangle>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader measurement-msg:uavangle-val is deprecated.  Use measurement-msg:uavangle instead.")
  (uavangle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Distanceanduavangle>) ostream)
  "Serializes a message object of type '<Distanceanduavangle>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'uavangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Distanceanduavangle>) istream)
  "Deserializes a message object of type '<Distanceanduavangle>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'uavangle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Distanceanduavangle>)))
  "Returns string type for a message object of type '<Distanceanduavangle>"
  "measurement/Distanceanduavangle")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Distanceanduavangle)))
  "Returns string type for a message object of type 'Distanceanduavangle"
  "measurement/Distanceanduavangle")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Distanceanduavangle>)))
  "Returns md5sum for a message object of type '<Distanceanduavangle>"
  "a023f694bd6f70a056da69c77b7bd085")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Distanceanduavangle)))
  "Returns md5sum for a message object of type 'Distanceanduavangle"
  "a023f694bd6f70a056da69c77b7bd085")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Distanceanduavangle>)))
  "Returns full string definition for message of type '<Distanceanduavangle>"
  (cl:format cl:nil "float64 distance~%float64 uavangle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Distanceanduavangle)))
  "Returns full string definition for message of type 'Distanceanduavangle"
  (cl:format cl:nil "float64 distance~%float64 uavangle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Distanceanduavangle>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Distanceanduavangle>))
  "Converts a ROS message object to a list"
  (cl:list 'Distanceanduavangle
    (cl:cons ':distance (distance msg))
    (cl:cons ':uavangle (uavangle msg))
))
