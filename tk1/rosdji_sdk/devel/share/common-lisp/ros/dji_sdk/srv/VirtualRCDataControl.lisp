; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude VirtualRCDataControl-request.msg.html

(cl:defclass <VirtualRCDataControl-request> (roslisp-msg-protocol:ros-message)
  ((channel_data
    :reader channel_data
    :initarg :channel_data
    :type (cl:vector cl:integer)
   :initform (cl:make-array 16 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass VirtualRCDataControl-request (<VirtualRCDataControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualRCDataControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualRCDataControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VirtualRCDataControl-request> is deprecated: use dji_sdk-srv:VirtualRCDataControl-request instead.")))

(cl:ensure-generic-function 'channel_data-val :lambda-list '(m))
(cl:defmethod channel_data-val ((m <VirtualRCDataControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:channel_data-val is deprecated.  Use dji_sdk-srv:channel_data instead.")
  (channel_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualRCDataControl-request>) ostream)
  "Serializes a message object of type '<VirtualRCDataControl-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'channel_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualRCDataControl-request>) istream)
  "Deserializes a message object of type '<VirtualRCDataControl-request>"
  (cl:setf (cl:slot-value msg 'channel_data) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'channel_data)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualRCDataControl-request>)))
  "Returns string type for a service object of type '<VirtualRCDataControl-request>"
  "dji_sdk/VirtualRCDataControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCDataControl-request)))
  "Returns string type for a service object of type 'VirtualRCDataControl-request"
  "dji_sdk/VirtualRCDataControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualRCDataControl-request>)))
  "Returns md5sum for a message object of type '<VirtualRCDataControl-request>"
  "f79b1fb00a282f2e0e1596e014134c60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualRCDataControl-request)))
  "Returns md5sum for a message object of type 'VirtualRCDataControl-request"
  "f79b1fb00a282f2e0e1596e014134c60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualRCDataControl-request>)))
  "Returns full string definition for message of type '<VirtualRCDataControl-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%uint32[16] channel_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualRCDataControl-request)))
  "Returns full string definition for message of type 'VirtualRCDataControl-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%~%~%~%~%~%uint32[16] channel_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualRCDataControl-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'channel_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualRCDataControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualRCDataControl-request
    (cl:cons ':channel_data (channel_data msg))
))
;//! \htmlinclude VirtualRCDataControl-response.msg.html

(cl:defclass <VirtualRCDataControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VirtualRCDataControl-response (<VirtualRCDataControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualRCDataControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualRCDataControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<VirtualRCDataControl-response> is deprecated: use dji_sdk-srv:VirtualRCDataControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <VirtualRCDataControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualRCDataControl-response>) ostream)
  "Serializes a message object of type '<VirtualRCDataControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualRCDataControl-response>) istream)
  "Deserializes a message object of type '<VirtualRCDataControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualRCDataControl-response>)))
  "Returns string type for a service object of type '<VirtualRCDataControl-response>"
  "dji_sdk/VirtualRCDataControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCDataControl-response)))
  "Returns string type for a service object of type 'VirtualRCDataControl-response"
  "dji_sdk/VirtualRCDataControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualRCDataControl-response>)))
  "Returns md5sum for a message object of type '<VirtualRCDataControl-response>"
  "f79b1fb00a282f2e0e1596e014134c60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualRCDataControl-response)))
  "Returns md5sum for a message object of type 'VirtualRCDataControl-response"
  "f79b1fb00a282f2e0e1596e014134c60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualRCDataControl-response>)))
  "Returns full string definition for message of type '<VirtualRCDataControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualRCDataControl-response)))
  "Returns full string definition for message of type 'VirtualRCDataControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualRCDataControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualRCDataControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualRCDataControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'VirtualRCDataControl)))
  'VirtualRCDataControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'VirtualRCDataControl)))
  'VirtualRCDataControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualRCDataControl)))
  "Returns string type for a service object of type '<VirtualRCDataControl>"
  "dji_sdk/VirtualRCDataControl")