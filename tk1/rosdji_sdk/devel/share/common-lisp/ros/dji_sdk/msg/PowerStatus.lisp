; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude PowerStatus.msg.html

(cl:defclass <PowerStatus> (roslisp-msg-protocol:ros-message)
  ((percentage
    :reader percentage
    :initarg :percentage
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerStatus (<PowerStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<PowerStatus> is deprecated: use dji_sdk-msg:PowerStatus instead.")))

(cl:ensure-generic-function 'percentage-val :lambda-list '(m))
(cl:defmethod percentage-val ((m <PowerStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:percentage-val is deprecated.  Use dji_sdk-msg:percentage instead.")
  (percentage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerStatus>) ostream)
  "Serializes a message object of type '<PowerStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percentage)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerStatus>) istream)
  "Deserializes a message object of type '<PowerStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'percentage)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerStatus>)))
  "Returns string type for a message object of type '<PowerStatus>"
  "dji_sdk/PowerStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerStatus)))
  "Returns string type for a message object of type 'PowerStatus"
  "dji_sdk/PowerStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerStatus>)))
  "Returns md5sum for a message object of type '<PowerStatus>"
  "0a5e877bf2d8a1641c4f5265662bc268")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerStatus)))
  "Returns md5sum for a message object of type 'PowerStatus"
  "0a5e877bf2d8a1641c4f5265662bc268")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerStatus>)))
  "Returns full string definition for message of type '<PowerStatus>"
  (cl:format cl:nil "uint8 percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerStatus)))
  "Returns full string definition for message of type 'PowerStatus"
  (cl:format cl:nil "uint8 percentage~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerStatus
    (cl:cons ':percentage (percentage msg))
))
