; Auto-generated. Do not edit!


(cl:in-package dji_sdk-srv)


;//! \htmlinclude MissionHpDownload-request.msg.html

(cl:defclass <MissionHpDownload-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MissionHpDownload-request (<MissionHpDownload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpDownload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpDownload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpDownload-request> is deprecated: use dji_sdk-srv:MissionHpDownload-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpDownload-request>) ostream)
  "Serializes a message object of type '<MissionHpDownload-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpDownload-request>) istream)
  "Deserializes a message object of type '<MissionHpDownload-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpDownload-request>)))
  "Returns string type for a service object of type '<MissionHpDownload-request>"
  "dji_sdk/MissionHpDownloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpDownload-request)))
  "Returns string type for a service object of type 'MissionHpDownload-request"
  "dji_sdk/MissionHpDownloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpDownload-request>)))
  "Returns md5sum for a message object of type '<MissionHpDownload-request>"
  "e36e66ca170c4d03ee023ad56c6bb5a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpDownload-request)))
  "Returns md5sum for a message object of type 'MissionHpDownload-request"
  "e36e66ca170c4d03ee023ad56c6bb5a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpDownload-request>)))
  "Returns full string definition for message of type '<MissionHpDownload-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpDownload-request)))
  "Returns full string definition for message of type 'MissionHpDownload-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpDownload-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpDownload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpDownload-request
))
;//! \htmlinclude MissionHpDownload-response.msg.html

(cl:defclass <MissionHpDownload-response> (roslisp-msg-protocol:ros-message)
  ((hotpoint_task
    :reader hotpoint_task
    :initarg :hotpoint_task
    :type dji_sdk-msg:MissionHotpointTask
    :initform (cl:make-instance 'dji_sdk-msg:MissionHotpointTask)))
)

(cl:defclass MissionHpDownload-response (<MissionHpDownload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionHpDownload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionHpDownload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-srv:<MissionHpDownload-response> is deprecated: use dji_sdk-srv:MissionHpDownload-response instead.")))

(cl:ensure-generic-function 'hotpoint_task-val :lambda-list '(m))
(cl:defmethod hotpoint_task-val ((m <MissionHpDownload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-srv:hotpoint_task-val is deprecated.  Use dji_sdk-srv:hotpoint_task instead.")
  (hotpoint_task m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionHpDownload-response>) ostream)
  "Serializes a message object of type '<MissionHpDownload-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hotpoint_task) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionHpDownload-response>) istream)
  "Deserializes a message object of type '<MissionHpDownload-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hotpoint_task) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionHpDownload-response>)))
  "Returns string type for a service object of type '<MissionHpDownload-response>"
  "dji_sdk/MissionHpDownloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpDownload-response)))
  "Returns string type for a service object of type 'MissionHpDownload-response"
  "dji_sdk/MissionHpDownloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionHpDownload-response>)))
  "Returns md5sum for a message object of type '<MissionHpDownload-response>"
  "e36e66ca170c4d03ee023ad56c6bb5a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionHpDownload-response)))
  "Returns md5sum for a message object of type 'MissionHpDownload-response"
  "e36e66ca170c4d03ee023ad56c6bb5a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionHpDownload-response>)))
  "Returns full string definition for message of type '<MissionHpDownload-response>"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude~%float64 longitude~%float64 altitude~%float64 radius~%float32 angular_speed~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionHpDownload-response)))
  "Returns full string definition for message of type 'MissionHpDownload-response"
  (cl:format cl:nil "MissionHotpointTask hotpoint_task~%~%~%================================================================================~%MSG: dji_sdk/MissionHotpointTask~%float64 latitude~%float64 longitude~%float64 altitude~%float64 radius~%float32 angular_speed~%uint8 is_clockwise~%uint8 start_point~%uint8 yaw_mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionHpDownload-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hotpoint_task))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionHpDownload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionHpDownload-response
    (cl:cons ':hotpoint_task (hotpoint_task msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MissionHpDownload)))
  'MissionHpDownload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MissionHpDownload)))
  'MissionHpDownload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionHpDownload)))
  "Returns string type for a service object of type '<MissionHpDownload>"
  "dji_sdk/MissionHpDownload")