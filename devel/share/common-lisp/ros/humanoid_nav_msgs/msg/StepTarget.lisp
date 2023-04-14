; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-msg)


;//! \htmlinclude StepTarget.msg.html

(cl:defclass <StepTarget> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D))
   (leg
    :reader leg
    :initarg :leg
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StepTarget (<StepTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StepTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StepTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-msg:<StepTarget> is deprecated: use humanoid_nav_msgs-msg:StepTarget instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <StepTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-msg:pose-val is deprecated.  Use humanoid_nav_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'leg-val :lambda-list '(m))
(cl:defmethod leg-val ((m <StepTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-msg:leg-val is deprecated.  Use humanoid_nav_msgs-msg:leg instead.")
  (leg m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StepTarget>)))
    "Constants for message type '<StepTarget>"
  '((:RIGHT . 0)
    (:LEFT . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StepTarget)))
    "Constants for message type 'StepTarget"
  '((:RIGHT . 0)
    (:LEFT . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StepTarget>) ostream)
  "Serializes a message object of type '<StepTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StepTarget>) istream)
  "Deserializes a message object of type '<StepTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'leg)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StepTarget>)))
  "Returns string type for a message object of type '<StepTarget>"
  "humanoid_nav_msgs/StepTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StepTarget)))
  "Returns string type for a message object of type 'StepTarget"
  "humanoid_nav_msgs/StepTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StepTarget>)))
  "Returns md5sum for a message object of type '<StepTarget>"
  "8ccf34ddb67039fbda0d9b2515ebb1ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StepTarget)))
  "Returns md5sum for a message object of type 'StepTarget"
  "8ccf34ddb67039fbda0d9b2515ebb1ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StepTarget>)))
  "Returns full string definition for message of type '<StepTarget>"
  (cl:format cl:nil "# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StepTarget)))
  "Returns full string definition for message of type 'StepTarget"
  (cl:format cl:nil "# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StepTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StepTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'StepTarget
    (cl:cons ':pose (pose msg))
    (cl:cons ':leg (leg msg))
))
