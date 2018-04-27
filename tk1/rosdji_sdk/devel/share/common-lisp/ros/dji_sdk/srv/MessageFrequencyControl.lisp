; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MessageFrequencyControl-request.msg.html

(cl:defclass <MessageFrequencyControl-request> (roslisp-msg-protocol:ros-message)
  ((frequency
    :reader frequency
    :initarg :frequency
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 16 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass MessageFrequencyControl-request (<MessageFrequencyControl-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageFrequencyControl-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageFrequencyControl-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MessageFrequencyControl-request> is deprecated: use dji_sdk-srv:MessageFrequencyControl-request instead.")))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <MessageFrequencyControl-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:frequency-val is deprecated.  Use dji_sdk-srv:frequency instead.")
  (frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageFrequencyControl-request>) ostream)
  "Serializes a message object of type '<MessageFrequencyControl-request>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'frequency))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageFrequencyControl-request>) istream)
  "Deserializes a message object of type '<MessageFrequencyControl-request>"
  (cl:setf (cl:slot-value msg 'frequency) (cl:make-array 16))
  (cl:let ((vals (cl:slot-value msg 'frequency)))
    (cl:dotimes (i 16)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageFrequencyControl-request>)))
  "Returns string type for a service object of type '<MessageFrequencyControl-request>"
  "dji_sdk/MessageFrequencyControlRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageFrequencyControl-request)))
  "Returns string type for a service object of type 'MessageFrequencyControl-request"
  "dji_sdk/MessageFrequencyControlRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageFrequencyControl-request>)))
  "Returns md5sum for a message object of type '<MessageFrequencyControl-request>"
  "631e88e1468cdc8d59e5bd64d8267053")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageFrequencyControl-request)))
  "Returns md5sum for a message object of type 'MessageFrequencyControl-request"
  "631e88e1468cdc8d59e5bd64d8267053")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageFrequencyControl-request>)))
  "Returns full string definition for message of type '<MessageFrequencyControl-request>"
  (cl:format cl:nil "uint8[16] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageFrequencyControl-request)))
  "Returns full string definition for message of type 'MessageFrequencyControl-request"
  (cl:format cl:nil "uint8[16] frequency~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageFrequencyControl-request>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'frequency) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageFrequencyControl-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageFrequencyControl-request
    (cl:cons ':frequency (frequency msg))
))
;//! \htmlinclude MessageFrequencyControl-response.msg.html

(cl:defclass <MessageFrequencyControl-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MessageFrequencyControl-response (<MessageFrequencyControl-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MessageFrequencyControl-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MessageFrequencyControl-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MessageFrequencyControl-response> is deprecated: use dji_sdk-srv:MessageFrequencyControl-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MessageFrequencyControl-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MessageFrequencyControl-response>) ostream)
  "Serializes a message object of type '<MessageFrequencyControl-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MessageFrequencyControl-response>) istream)
  "Deserializes a message object of type '<MessageFrequencyControl-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MessageFrequencyControl-response>)))
  "Returns string type for a service object of type '<MessageFrequencyControl-response>"
  "dji_sdk/MessageFrequencyControlResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageFrequencyControl-response)))
  "Returns string type for a service object of type 'MessageFrequencyControl-response"
  "dji_sdk/MessageFrequencyControlResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MessageFrequencyControl-response>)))
  "Returns md5sum for a message object of type '<MessageFrequencyControl-response>"
  "631e88e1468cdc8d59e5bd64d8267053")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MessageFrequencyControl-response)))
  "Returns md5sum for a message object of type 'MessageFrequencyControl-response"
  "631e88e1468cdc8d59e5bd64d8267053")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MessageFrequencyControl-response>)))
  "Returns full string definition for message of type '<MessageFrequencyControl-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MessageFrequencyControl-response)))
  "Returns full string definition for message of type 'MessageFrequencyControl-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MessageFrequencyControl-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MessageFrequencyControl-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MessageFrequencyControl-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MessageFrequencyControl)))
  'MessageFrequencyControl-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MessageFrequencyControl)))
  'MessageFrequencyControl-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MessageFrequencyControl)))
  "Returns string type for a service object of type '<MessageFrequencyControl>"
  "dji_sdk/MessageFrequencyControl")