; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude GlobalPositionNavigationGoal.msg.html

(cl:defclass <GlobalPositionNavigationGoal> (roslisp-msg-protocol:ros-message)
  ((latitude
    :reader latitude
    :initarg :latitude
    :type cl:float
    :initform 0.0)
   (longitude
    :reader longitude
    :initarg :longitude
    :type cl:float
    :initform 0.0)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0))
)

(cl:defclass GlobalPositionNavigationGoal (<GlobalPositionNavigationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPositionNavigationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPositionNavigationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<GlobalPositionNavigationGoal> is deprecated: use dji_sdk-msg:GlobalPositionNavigationGoal instead.")))

(cl:ensure-generic-function 'latitude-val :lambda-list '(m))
(cl:defmethod latitude-val ((m <GlobalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:latitude-val is deprecated.  Use dji_sdk-msg:latitude instead.")
  (latitude m))

(cl:ensure-generic-function 'longitude-val :lambda-list '(m))
(cl:defmethod longitude-val ((m <GlobalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:longitude-val is deprecated.  Use dji_sdk-msg:longitude instead.")
  (longitude m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <GlobalPositionNavigationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:altitude-val is deprecated.  Use dji_sdk-msg:altitude instead.")
  (altitude m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPositionNavigationGoal>) ostream)
  "Serializes a message object of type '<GlobalPositionNavigationGoal>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPositionNavigationGoal>) istream)
  "Deserializes a message object of type '<GlobalPositionNavigationGoal>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPositionNavigationGoal>)))
  "Returns string type for a message object of type '<GlobalPositionNavigationGoal>"
  "dji_sdk/GlobalPositionNavigationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPositionNavigationGoal)))
  "Returns string type for a message object of type 'GlobalPositionNavigationGoal"
  "dji_sdk/GlobalPositionNavigationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPositionNavigationGoal>)))
  "Returns md5sum for a message object of type '<GlobalPositionNavigationGoal>"
  "055ec9ba37e4c88f434ae1fcb281ad29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPositionNavigationGoal)))
  "Returns md5sum for a message object of type 'GlobalPositionNavigationGoal"
  "055ec9ba37e4c88f434ae1fcb281ad29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPositionNavigationGoal>)))
  "Returns full string definition for message of type '<GlobalPositionNavigationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPositionNavigationGoal)))
  "Returns full string definition for message of type 'GlobalPositionNavigationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPositionNavigationGoal>))
  (cl:+ 0
     8
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPositionNavigationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPositionNavigationGoal
    (cl:cons ':latitude (latitude msg))
    (cl:cons ':longitude (longitude msg))
    (cl:cons ':altitude (altitude msg))
))
