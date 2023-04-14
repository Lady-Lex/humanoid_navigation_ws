; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-srv)


;//! \htmlinclude ClipFootstep-request.msg.html

(cl:defclass <ClipFootstep-request> (roslisp-msg-protocol:ros-message)
  ((step
    :reader step
    :initarg :step
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
)

(cl:defclass ClipFootstep-request (<ClipFootstep-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClipFootstep-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClipFootstep-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<ClipFootstep-request> is deprecated: use humanoid_nav_msgs-srv:ClipFootstep-request instead.")))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <ClipFootstep-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:step-val is deprecated.  Use humanoid_nav_msgs-srv:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClipFootstep-request>) ostream)
  "Serializes a message object of type '<ClipFootstep-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClipFootstep-request>) istream)
  "Deserializes a message object of type '<ClipFootstep-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClipFootstep-request>)))
  "Returns string type for a service object of type '<ClipFootstep-request>"
  "humanoid_nav_msgs/ClipFootstepRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClipFootstep-request)))
  "Returns string type for a service object of type 'ClipFootstep-request"
  "humanoid_nav_msgs/ClipFootstepRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClipFootstep-request>)))
  "Returns md5sum for a message object of type '<ClipFootstep-request>"
  "394ac576028f40af6569704f845b86a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClipFootstep-request)))
  "Returns md5sum for a message object of type 'ClipFootstep-request"
  "394ac576028f40af6569704f845b86a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClipFootstep-request>)))
  "Returns full string definition for message of type '<ClipFootstep-request>"
  (cl:format cl:nil "StepTarget step~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClipFootstep-request)))
  "Returns full string definition for message of type 'ClipFootstep-request"
  (cl:format cl:nil "StepTarget step~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClipFootstep-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClipFootstep-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClipFootstep-request
    (cl:cons ':step (step msg))
))
;//! \htmlinclude ClipFootstep-response.msg.html

(cl:defclass <ClipFootstep-response> (roslisp-msg-protocol:ros-message)
  ((step
    :reader step
    :initarg :step
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
)

(cl:defclass ClipFootstep-response (<ClipFootstep-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClipFootstep-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClipFootstep-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<ClipFootstep-response> is deprecated: use humanoid_nav_msgs-srv:ClipFootstep-response instead.")))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <ClipFootstep-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:step-val is deprecated.  Use humanoid_nav_msgs-srv:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClipFootstep-response>) ostream)
  "Serializes a message object of type '<ClipFootstep-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'step) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClipFootstep-response>) istream)
  "Deserializes a message object of type '<ClipFootstep-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'step) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClipFootstep-response>)))
  "Returns string type for a service object of type '<ClipFootstep-response>"
  "humanoid_nav_msgs/ClipFootstepResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClipFootstep-response)))
  "Returns string type for a service object of type 'ClipFootstep-response"
  "humanoid_nav_msgs/ClipFootstepResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClipFootstep-response>)))
  "Returns md5sum for a message object of type '<ClipFootstep-response>"
  "394ac576028f40af6569704f845b86a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClipFootstep-response)))
  "Returns md5sum for a message object of type 'ClipFootstep-response"
  "394ac576028f40af6569704f845b86a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClipFootstep-response>)))
  "Returns full string definition for message of type '<ClipFootstep-response>"
  (cl:format cl:nil "StepTarget step~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClipFootstep-response)))
  "Returns full string definition for message of type 'ClipFootstep-response"
  (cl:format cl:nil "StepTarget step~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClipFootstep-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'step))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClipFootstep-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClipFootstep-response
    (cl:cons ':step (step msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClipFootstep)))
  'ClipFootstep-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClipFootstep)))
  'ClipFootstep-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClipFootstep)))
  "Returns string type for a service object of type '<ClipFootstep>"
  "humanoid_nav_msgs/ClipFootstep")