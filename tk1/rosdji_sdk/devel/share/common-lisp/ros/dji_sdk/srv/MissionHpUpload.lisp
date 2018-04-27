; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpUpload-request.msg.html

(cl:defclass <MissionHpUpload-request> (roslisp-msg-protocol:ros-message)
  ((hotpoint_task
    :reader hotpoint_task
    :initarg :hotpoint_task
    :type dji_sdk-msg:MissionHotpointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionHotpointTask)))
)

(cl:defclass MissionHpUpload-request (<MissionHpUpload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpload-request> is deprecated: use dji_sdk-srv:MissionHpUpload-request instead.")))

(cl:ensure-generic-function 'hotpoint_task-val :lambda-list '(m))
(cl:defmethod hotpoint_task-val ((m <MissionHpUpload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:hotpoint_task-val is deprecated.  Use dji_sdk-srv:hotpoint_task instead.")
  (hotpoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpload-request>) ostream)
  "Serializes a message object of type '<MissionHpUpload-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hotpoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpload-request>) istream)
  "Deserializes a message object of type '<MissionHpUpload-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hotpoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpload-request>)))
  "Returns string type for a service object of type '<MissionHpUpload-request>"
  "dji_sdk/MissionHpUploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload-request)))
  "Returns string type for a service object of type 'MissionHpUpload-request"
  "dji_sdk/MissionHpUploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpload-request>)))
  "Returns md5sum for a message object of type '<MissionHpUpload-request>"
  "d057d61e861a72611b7918cfd8a98e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpload-request)))
  "Returns md5sum for a message object of type 'MissionHpUpload-request"
  "d057d61e861a72611b7918cfd8a98e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpload-request>)))
  "Returns full string definition for message of type '<MissionHpUpload-request>"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude~%float64 longitude~%float64 altitude~%float64 radius~%float32 angular_speed~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpload-request)))
  "Returns full string definition for message of type 'MissionHpUpload-request"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude~%float64 longitude~%float64 altitude~%float64 radius~%float32 angular_speed~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpload-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hotpoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpload-request
    (cl:cons ':hotpoint_task (hotpoint_task msg))
))
;//! \htmlinclude MissionHpUpload-response.msg.html

(cl:defclass <MissionHpUpload-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionHpUpload-response (<MissionHpUpload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpUpload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpUpload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpUpload-response> is deprecated: use dji_sdk-srv:MissionHpUpload-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <MissionHpUpload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:result-val is deprecated.  Use dji_sdk-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpUpload-response>) ostream)
  "Serializes a message object of type '<MissionHpUpload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpUpload-response>) istream)
  "Deserializes a message object of type '<MissionHpUpload-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpUpload-response>)))
  "Returns string type for a service object of type '<MissionHpUpload-response>"
  "dji_sdk/MissionHpUploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload-response)))
  "Returns string type for a service object of type 'MissionHpUpload-response"
  "dji_sdk/MissionHpUploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpUpload-response>)))
  "Returns md5sum for a message object of type '<MissionHpUpload-response>"
  "d057d61e861a72611b7918cfd8a98e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpUpload-response)))
  "Returns md5sum for a message object of type 'MissionHpUpload-response"
  "d057d61e861a72611b7918cfd8a98e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpUpload-response>)))
  "Returns full string definition for message of type '<MissionHpUpload-response>"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpUpload-response)))
  "Returns full string definition for message of type 'MissionHpUpload-response"
  (cl:format cl:nil "bool result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpUpload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpUpload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpUpload-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpUpload)))
  'MissionHpUpload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpUpload)))
  'MissionHpUpload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpUpload)))
  "Returns string type for a service object of type '<MissionHpUpload>"
  "dji_sdk/MissionHpUpload")