; Auto-generated. Do not edit!


(cl:in-package dji_sdk-msg)


;//! \htmlinclude WaypointList.msg.html

(cl:defclass <WaypointList> (roslisp-msg-protocol:ros-message)
  ((waypoint_list
    :reader waypoint_list
    :initarg :waypoint_list
    :type (cl:vector dji_sdk-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'dji_sdk-msg:Waypoint :initial-element (cl:make-instance 'dji_sdk-msg:Waypoint))))
)

(cl:defclass WaypointList (<WaypointList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dji_sdk-msg:<WaypointList> is deprecated: use dji_sdk-msg:WaypointList instead.")))

(cl:ensure-generic-function 'waypoint_list-val :lambda-list '(m))
(cl:defmethod waypoint_list-val ((m <WaypointList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dji_sdk-msg:waypoint_list-val is deprecated.  Use dji_sdk-msg:waypoint_list instead.")
  (waypoint_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointList>) ostream)
  "Serializes a message object of type '<WaypointList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoint_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoint_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointList>) istream)
  "Deserializes a message object of type '<WaypointList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoint_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoint_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dji_sdk-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointList>)))
  "Returns string type for a message object of type '<WaypointList>"
  "dji_sdk/WaypointList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointList)))
  "Returns string type for a message object of type 'WaypointList"
  "dji_sdk/WaypointList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointList>)))
  "Returns md5sum for a message object of type '<WaypointList>"
  "284386e6fe0f355bdea1db93ead90084")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointList)))
  "Returns md5sum for a message object of type 'WaypointList"
  "284386e6fe0f355bdea1db93ead90084")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointList>)))
  "Returns full string definition for message of type '<WaypointList>"
  (cl:format cl:nil "Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointList)))
  "Returns full string definition for message of type 'WaypointList"
  (cl:format cl:nil "Waypoint[] waypoint_list~%~%================================================================================~%MSG: dji_sdk/Waypoint~%#latitude is in degree~%float64 latitude~%#longitude is in degree~%float64 longitude~%float32 altitude~%#heading is in [-180,180]~%int16 heading ~%#stay time is in second~%uint16 staytime~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoint_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointList>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointList
    (cl:cons ':waypoint_list (waypoint_list msg))
))
