; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-msg)


;//! \htmlinclude ExecFootstepsGoal.msg.html

(cl:defclass <ExecFootstepsGoal> (roslisp-msg-protocol:ros-message)
  ((footsteps
    :reader footsteps
    :initarg :footsteps
    :type (cl:vector humanoid_nav_msgs-msg:StepTarget)
   :initform (cl:make-array 0 :element-type 'humanoid_nav_msgs-msg:StepTarget :initial-element (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
   (feedback_frequency
    :reader feedback_frequency
    :initarg :feedback_frequency
    :type cl:float
    :initform 0.0))
)

(cl:defclass ExecFootstepsGoal (<ExecFootstepsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecFootstepsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecFootstepsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-msg:<ExecFootstepsGoal> is deprecated: use humanoid_nav_msgs-msg:ExecFootstepsGoal instead.")))

(cl:ensure-generic-function 'footsteps-val :lambda-list '(m))
(cl:defmethod footsteps-val ((m <ExecFootstepsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-msg:footsteps-val is deprecated.  Use humanoid_nav_msgs-msg:footsteps instead.")
  (footsteps m))

(cl:ensure-generic-function 'feedback_frequency-val :lambda-list '(m))
(cl:defmethod feedback_frequency-val ((m <ExecFootstepsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-msg:feedback_frequency-val is deprecated.  Use humanoid_nav_msgs-msg:feedback_frequency instead.")
  (feedback_frequency m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecFootstepsGoal>) ostream)
  "Serializes a message object of type '<ExecFootstepsGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'footsteps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footsteps))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'feedback_frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecFootstepsGoal>) istream)
  "Deserializes a message object of type '<ExecFootstepsGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'footsteps) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'footsteps)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'feedback_frequency) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecFootstepsGoal>)))
  "Returns string type for a message object of type '<ExecFootstepsGoal>"
  "humanoid_nav_msgs/ExecFootstepsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecFootstepsGoal)))
  "Returns string type for a message object of type 'ExecFootstepsGoal"
  "humanoid_nav_msgs/ExecFootstepsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecFootstepsGoal>)))
  "Returns md5sum for a message object of type '<ExecFootstepsGoal>"
  "40a3f8092ef3bb49c3253baa6eb94932")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecFootstepsGoal)))
  "Returns md5sum for a message object of type 'ExecFootstepsGoal"
  "40a3f8092ef3bb49c3253baa6eb94932")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecFootstepsGoal>)))
  "Returns full string definition for message of type '<ExecFootstepsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 feedback_frequency~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecFootstepsGoal)))
  "Returns full string definition for message of type 'ExecFootstepsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the goal~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 feedback_frequency~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecFootstepsGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'footsteps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecFootstepsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecFootstepsGoal
    (cl:cons ':footsteps (footsteps msg))
    (cl:cons ':feedback_frequency (feedback_frequency msg))
))
