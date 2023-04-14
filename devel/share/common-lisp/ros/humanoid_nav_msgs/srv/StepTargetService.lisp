; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-srv)


;//! \htmlinclude StepTargetService-request.msg.html

(cl:defclass <StepTargetService-request> (roslisp-msg-protocol:ros-message)
  ((step
    :reader step
    :initarg :step
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
)

(cl:defclass StepTargetService-request (<StepTargetService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepTargetService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepTargetService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<StepTargetService-request> is deprecated: use humanoid_nav_msgs-srv:StepTargetService-request instead.")))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <StepTargetService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:step-val is deprecated.  Use humanoid_nav_msgs-srv:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepTargetService-request>) ostream)
  "Serializes a message object of type '<StepTargetService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepTargetService-request>) istream)
  "Deserializes a message object of type '<StepTargetService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepTargetService-request>)))
  "Returns string type for a service object of type '<StepTargetService-request>"
  "humanoid_nav_msgs/StepTargetServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepTargetService-request)))
  "Returns string type for a service object of type 'StepTargetService-request"
  "humanoid_nav_msgs/StepTargetServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepTargetService-request>)))
  "Returns md5sum for a message object of type '<StepTargetService-request>"
  "f22cfce442b381849d82602383b052c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepTargetService-request)))
  "Returns md5sum for a message object of type 'StepTargetService-request"
  "f22cfce442b381849d82602383b052c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepTargetService-request>)))
  "Returns full string definition for message of type '<StepTargetService-request>"
  (cl:format cl:nil "# Step target as service:~%humanoid_nav_msgs/StepTarget step~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepTargetService-request)))
  "Returns full string definition for message of type 'StepTargetService-request"
  (cl:format cl:nil "# Step target as service:~%humanoid_nav_msgs/StepTarget step~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepTargetService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepTargetService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StepTargetService-request
    (cl:cons ':step (step msg))
))
;//! \htmlinclude StepTargetService-response.msg.html

(cl:defclass <StepTargetService-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass StepTargetService-response (<StepTargetService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepTargetService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepTargetService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<StepTargetService-response> is deprecated: use humanoid_nav_msgs-srv:StepTargetService-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepTargetService-response>) ostream)
  "Serializes a message object of type '<StepTargetService-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepTargetService-response>) istream)
  "Deserializes a message object of type '<StepTargetService-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepTargetService-response>)))
  "Returns string type for a service object of type '<StepTargetService-response>"
  "humanoid_nav_msgs/StepTargetServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepTargetService-response)))
  "Returns string type for a service object of type 'StepTargetService-response"
  "humanoid_nav_msgs/StepTargetServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepTargetService-response>)))
  "Returns md5sum for a message object of type '<StepTargetService-response>"
  "f22cfce442b381849d82602383b052c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepTargetService-response)))
  "Returns md5sum for a message object of type 'StepTargetService-response"
  "f22cfce442b381849d82602383b052c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepTargetService-response>)))
  "Returns full string definition for message of type '<StepTargetService-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepTargetService-response)))
  "Returns full string definition for message of type 'StepTargetService-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepTargetService-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepTargetService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StepTargetService-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StepTargetService)))
  'StepTargetService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StepTargetService)))
  'StepTargetService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepTargetService)))
  "Returns string type for a service object of type '<StepTargetService>"
  "humanoid_nav_msgs/StepTargetService")