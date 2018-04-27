; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude LocalPositionNavigationGoal.msg.html

(cl:defclass <LocalPositionNavigationGoal> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalPositionNavigationGoal (<LocalPositionNavigationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalPositionNavigationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalPositionNavigationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<LocalPositionNavigationGoal> is deprecated: use dji_sdk-msg:LocalPositionNavigationGoal instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <LocalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:x-val is deprecated.  Use dji_sdk-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <LocalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:y-val is deprecated.  Use dji_sdk-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <LocalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:z-val is deprecated.  Use dji_sdk-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalPositionNavigationGoal>) ostream)
  "Serializes a message object of type '<LocalPositionNavigationGoal>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalPositionNavigationGoal>) istream)
  "Deserializes a message object of type '<LocalPositionNavigationGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalPositionNavigationGoal>)))
  "Returns string type for a message object of type '<LocalPositionNavigationGoal>"
  "dji_sdk/LocalPositionNavigationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalPositionNavigationGoal)))
  "Returns string type for a message object of type 'LocalPositionNavigationGoal"
  "dji_sdk/LocalPositionNavigationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalPositionNavigationGoal>)))
  "Returns md5sum for a message object of type '<LocalPositionNavigationGoal>"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalPositionNavigationGoal)))
  "Returns md5sum for a message object of type 'LocalPositionNavigationGoal"
  "cc153912f1453b708d221682bc23d9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalPositionNavigationGoal>)))
  "Returns full string definition for message of type '<LocalPositionNavigationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#x,y,z are in meters~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalPositionNavigationGoal)))
  "Returns full string definition for message of type 'LocalPositionNavigationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#x,y,z are in meters~%float32 x~%float32 y~%float32 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalPositionNavigationGoal>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalPositionNavigationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalPositionNavigationGoal
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
