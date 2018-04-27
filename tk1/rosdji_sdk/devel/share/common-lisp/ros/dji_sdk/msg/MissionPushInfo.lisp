; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude MissionPushInfo.msg.html

(cl:defclass <MissionPushInfo> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (data_1
    :reader data_1
    :initarg :data_1
    :type cl:fixnum
    :initform 0)
   (data_2
    :reader data_2
    :initarg :data_2
    :type cl:fixnum
    :initform 0)
   (data_3
    :reader data_3
    :initarg :data_3
    :type cl:fixnum
    :initform 0)
   (data_4
    :reader data_4
    :initarg :data_4
    :type cl:fixnum
    :initform 0)
   (data_5
    :reader data_5
    :initarg :data_5
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MissionPushInfo (<MissionPushInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionPushInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionPushInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<MissionPushInfo> is deprecated: use dji_sdk-msg:MissionPushInfo instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:type-val is deprecated.  Use dji_sdk-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'data_1-val :lambda-list '(m))
(cl:defmethod data_1-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data_1-val is deprecated.  Use dji_sdk-msg:data_1 instead.")
  (data_1 m))

(cl:ensure-generic-function 'data_2-val :lambda-list '(m))
(cl:defmethod data_2-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data_2-val is deprecated.  Use dji_sdk-msg:data_2 instead.")
  (data_2 m))

(cl:ensure-generic-function 'data_3-val :lambda-list '(m))
(cl:defmethod data_3-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data_3-val is deprecated.  Use dji_sdk-msg:data_3 instead.")
  (data_3 m))

(cl:ensure-generic-function 'data_4-val :lambda-list '(m))
(cl:defmethod data_4-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data_4-val is deprecated.  Use dji_sdk-msg:data_4 instead.")
  (data_4 m))

(cl:ensure-generic-function 'data_5-val :lambda-list '(m))
(cl:defmethod data_5-val ((m <MissionPushInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data_5-val is deprecated.  Use dji_sdk-msg:data_5 instead.")
  (data_5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionPushInfo>) ostream)
  "Serializes a message object of type '<MissionPushInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_4)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_5)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionPushInfo>) istream)
  "Deserializes a message object of type '<MissionPushInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_4)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_5)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionPushInfo>)))
  "Returns string type for a message object of type '<MissionPushInfo>"
  "dji_sdk/MissionPushInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionPushInfo)))
  "Returns string type for a message object of type 'MissionPushInfo"
  "dji_sdk/MissionPushInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionPushInfo>)))
  "Returns md5sum for a message object of type '<MissionPushInfo>"
  "a520776ca6060b527ddc1be33a700532")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionPushInfo)))
  "Returns md5sum for a message object of type 'MissionPushInfo"
  "a520776ca6060b527ddc1be33a700532")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionPushInfo>)))
  "Returns full string definition for message of type '<MissionPushInfo>"
  (cl:format cl:nil "uint8 type~%uint8 data_1~%uint8 data_2~%uint8 data_3~%uint8 data_4~%uint8 data_5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionPushInfo)))
  "Returns full string definition for message of type 'MissionPushInfo"
  (cl:format cl:nil "uint8 type~%uint8 data_1~%uint8 data_2~%uint8 data_3~%uint8 data_4~%uint8 data_5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionPushInfo>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionPushInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionPushInfo
    (cl:cons ':type (type msg))
    (cl:cons ':data_1 (data_1 msg))
    (cl:cons ':data_2 (data_2 msg))
    (cl:cons ':data_3 (data_3 msg))
    (cl:cons ':data_4 (data_4 msg))
    (cl:cons ':data_5 (data_5 msg))
))
