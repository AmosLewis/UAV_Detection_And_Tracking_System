; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionFmUpload-request.msg.html

(cl:defclass <MissionFmUpload-request> (roslisp-msg-protocol:ros-message)
  ((followme_task
    :reader followme_task
    :initarg :followme_task
    :type dji_sdk-msg:MissionFollowmeTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionFollowmeTask)))
)

(cl:defclass MissionFmUpload-request (<MissionFmUpload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFmUpload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFmUpload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionFmUpload-request> is deprecated: use dji_sdk-srv:MissionFmUpload-request instead.")))

(cl:ensure-generic-function 'followme_task-val :lambda-list '(m))
(cl:defmethod followme_task-val ((m <MissionFmUpload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:followme_task-val is deprecated.  Use dji_sdk-srv:followme_task instead.")
  (followme_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFmUpload-request>) ostream)
  "Serializes a message object of type '<MissionFmUpload-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'followme_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFmUpload-request>) istream)
  "Deserializes a message object of type '<MissionFmUpload-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'followme_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFmUpload-request>)))
  "Returns string type for a service object of type '<MissionFmUpload-request>"
  "dji_sdk/MissionFmUploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmUpload-request)))
  "Returns string type for a service object of type 'MissionFmUpload-request"
  "dji_sdk/MissionFmUploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFmUpload-request>)))
  "Returns md5sum for a message object of type '<MissionFmUpload-request>"
  "10ed872d3d019b452e558098ab5f5224")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFmUpload-request)))
  "Returns md5sum for a message object of type 'MissionFmUpload-request"
  "10ed872d3d019b452e558098ab5f5224")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFmUpload-request>)))
  "Returns full string definition for message of type '<MissionFmUpload-request>"
  (cl:format cl:nil "MissionFollowmeTask followme_task~%~%================================================================================~%MSG: dji_sdk/MissionFollowmeTask~%uint8 mode~%uint8 yaw_mode~%float64 initial_latitude~%float64 initial_longitude~%uint16 initial_altitude~%uint8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFmUpload-request)))
  "Returns full string definition for message of type 'MissionFmUpload-request"
  (cl:format cl:nil "MissionFollowmeTask followme_task~%~%================================================================================~%MSG: dji_sdk/MissionFollowmeTask~%uint8 mode~%uint8 yaw_mode~%float64 initial_latitude~%float64 initial_longitude~%uint16 initial_altitude~%uint8 sensitivity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFmUpload-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'followme_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFmUpload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFmUpload-request
    (cl:cons ':followme_task (followme_task msg))
))
;//! \htmlinclude MissionFmUpload-response.msg.html

(cl:defclass <MissionFmUpload-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionFmUpload-response (<MissionFmUpload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionFmUpload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionFmUpload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionFmUpload-response> is deprecated: use dji_sdk-srv:MissionFmUpload-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionFmUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionFmUpload-response>) ostream)
  "Serializes a message object of type '<MissionFmUpload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionFmUpload-response>) istream)
  "Deserializes a message object of type '<MissionFmUpload-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionFmUpload-response>)))
  "Returns string type for a service object of type '<MissionFmUpload-response>"
  "dji_sdk/MissionFmUploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmUpload-response)))
  "Returns string type for a service object of type 'MissionFmUpload-response"
  "dji_sdk/MissionFmUploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionFmUpload-response>)))
  "Returns md5sum for a message object of type '<MissionFmUpload-response>"
  "10ed872d3d019b452e558098ab5f5224")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionFmUpload-response)))
  "Returns md5sum for a message object of type 'MissionFmUpload-response"
  "10ed872d3d019b452e558098ab5f5224")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionFmUpload-response>)))
  "Returns full string definition for message of type '<MissionFmUpload-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionFmUpload-response)))
  "Returns full string definition for message of type 'MissionFmUpload-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionFmUpload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionFmUpload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionFmUpload-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionFmUpload)))
  'MissionFmUpload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionFmUpload)))
  'MissionFmUpload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionFmUpload)))
  "Returns string type for a service object of type '<MissionFmUpload>"
  "dji_sdk/MissionFmUpload")