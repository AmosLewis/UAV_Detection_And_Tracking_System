; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude TransparentTransmissionData.msg.html

(cl:defclass <TransparentTransmissionData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass TransparentTransmissionData (<TransparentTransmissionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransparentTransmissionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransparentTransmissionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<TransparentTransmissionData> is deprecated: use dji_sdk-msg:TransparentTransmissionData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <TransparentTransmissionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:data-val is deprecated.  Use dji_sdk-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransparentTransmissionData>) ostream)
  "Serializes a message object of type '<TransparentTransmissionData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransparentTransmissionData>) istream)
  "Deserializes a message object of type '<TransparentTransmissionData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransparentTransmissionData>)))
  "Returns string type for a message object of type '<TransparentTransmissionData>"
  "dji_sdk/TransparentTransmissionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransparentTransmissionData)))
  "Returns string type for a message object of type 'TransparentTransmissionData"
  "dji_sdk/TransparentTransmissionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransparentTransmissionData>)))
  "Returns md5sum for a message object of type '<TransparentTransmissionData>"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransparentTransmissionData)))
  "Returns md5sum for a message object of type 'TransparentTransmissionData"
  "f43a8e1b362b75baa741461b46adc7e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransparentTransmissionData>)))
  "Returns full string definition for message of type '<TransparentTransmissionData>"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransparentTransmissionData)))
  "Returns full string definition for message of type 'TransparentTransmissionData"
  (cl:format cl:nil "uint8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransparentTransmissionData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransparentTransmissionData>))
  "Converts a ROS message object to a list"
  (cl:list 'TransparentTransmissionData
    (cl:cons ':data (data msg))
))
