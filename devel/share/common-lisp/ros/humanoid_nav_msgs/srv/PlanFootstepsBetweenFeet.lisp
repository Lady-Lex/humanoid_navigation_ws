; Auto-generated. Do not edit!


(cl:in-package humanoid_nav_msgs-srv)


;//! \htmlinclude PlanFootstepsBetweenFeet-request.msg.html

(cl:defclass <PlanFootstepsBetweenFeet-request> (roslisp-msg-protocol:ros-message)
  ((start_left
    :reader start_left
    :initarg :start_left
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
   (start_right
    :reader start_right
    :initarg :start_right
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
   (goal_left
    :reader goal_left
    :initarg :goal_left
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget))
   (goal_right
    :reader goal_right
    :initarg :goal_right
    :type humanoid_nav_msgs-msg:StepTarget
    :initform (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
)

(cl:defclass PlanFootstepsBetweenFeet-request (<PlanFootstepsBetweenFeet-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFootstepsBetweenFeet-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFootstepsBetweenFeet-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<PlanFootstepsBetweenFeet-request> is deprecated: use humanoid_nav_msgs-srv:PlanFootstepsBetweenFeet-request instead.")))

(cl:ensure-generic-function 'start_left-val :lambda-list '(m))
(cl:defmethod start_left-val ((m <PlanFootstepsBetweenFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:start_left-val is deprecated.  Use humanoid_nav_msgs-srv:start_left instead.")
  (start_left m))

(cl:ensure-generic-function 'start_right-val :lambda-list '(m))
(cl:defmethod start_right-val ((m <PlanFootstepsBetweenFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:start_right-val is deprecated.  Use humanoid_nav_msgs-srv:start_right instead.")
  (start_right m))

(cl:ensure-generic-function 'goal_left-val :lambda-list '(m))
(cl:defmethod goal_left-val ((m <PlanFootstepsBetweenFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:goal_left-val is deprecated.  Use humanoid_nav_msgs-srv:goal_left instead.")
  (goal_left m))

(cl:ensure-generic-function 'goal_right-val :lambda-list '(m))
(cl:defmethod goal_right-val ((m <PlanFootstepsBetweenFeet-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:goal_right-val is deprecated.  Use humanoid_nav_msgs-srv:goal_right instead.")
  (goal_right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFootstepsBetweenFeet-request>) ostream)
  "Serializes a message object of type '<PlanFootstepsBetweenFeet-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_right) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFootstepsBetweenFeet-request>) istream)
  "Deserializes a message object of type '<PlanFootstepsBetweenFeet-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_right) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFootstepsBetweenFeet-request>)))
  "Returns string type for a service object of type '<PlanFootstepsBetweenFeet-request>"
  "humanoid_nav_msgs/PlanFootstepsBetweenFeetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootstepsBetweenFeet-request)))
  "Returns string type for a service object of type 'PlanFootstepsBetweenFeet-request"
  "humanoid_nav_msgs/PlanFootstepsBetweenFeetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFootstepsBetweenFeet-request>)))
  "Returns md5sum for a message object of type '<PlanFootstepsBetweenFeet-request>"
  "a4b63c1d84c3783139a04f9abafe7214")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFootstepsBetweenFeet-request)))
  "Returns md5sum for a message object of type 'PlanFootstepsBetweenFeet-request"
  "a4b63c1d84c3783139a04f9abafe7214")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFootstepsBetweenFeet-request>)))
  "Returns full string definition for message of type '<PlanFootstepsBetweenFeet-request>"
  (cl:format cl:nil "humanoid_nav_msgs/StepTarget start_left~%humanoid_nav_msgs/StepTarget start_right~%humanoid_nav_msgs/StepTarget goal_left~%humanoid_nav_msgs/StepTarget goal_right~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFootstepsBetweenFeet-request)))
  "Returns full string definition for message of type 'PlanFootstepsBetweenFeet-request"
  (cl:format cl:nil "humanoid_nav_msgs/StepTarget start_left~%humanoid_nav_msgs/StepTarget start_right~%humanoid_nav_msgs/StepTarget goal_left~%humanoid_nav_msgs/StepTarget goal_right~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFootstepsBetweenFeet-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_right))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFootstepsBetweenFeet-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFootstepsBetweenFeet-request
    (cl:cons ':start_left (start_left msg))
    (cl:cons ':start_right (start_right msg))
    (cl:cons ':goal_left (goal_left msg))
    (cl:cons ':goal_right (goal_right msg))
))
;//! \htmlinclude PlanFootstepsBetweenFeet-response.msg.html

(cl:defclass <PlanFootstepsBetweenFeet-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (footsteps
    :reader footsteps
    :initarg :footsteps
    :type (cl:vector humanoid_nav_msgs-msg:StepTarget)
   :initform (cl:make-array 0 :element-type 'humanoid_nav_msgs-msg:StepTarget :initial-element (cl:make-instance 'humanoid_nav_msgs-msg:StepTarget)))
   (costs
    :reader costs
    :initarg :costs
    :type cl:float
    :initform 0.0)
   (final_eps
    :reader final_eps
    :initarg :final_eps
    :type cl:float
    :initform 0.0)
   (planning_time
    :reader planning_time
    :initarg :planning_time
    :type cl:float
    :initform 0.0)
   (expanded_states
    :reader expanded_states
    :initarg :expanded_states
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanFootstepsBetweenFeet-response (<PlanFootstepsBetweenFeet-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanFootstepsBetweenFeet-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanFootstepsBetweenFeet-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name humanoid_nav_msgs-srv:<PlanFootstepsBetweenFeet-response> is deprecated: use humanoid_nav_msgs-srv:PlanFootstepsBetweenFeet-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:result-val is deprecated.  Use humanoid_nav_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'footsteps-val :lambda-list '(m))
(cl:defmethod footsteps-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:footsteps-val is deprecated.  Use humanoid_nav_msgs-srv:footsteps instead.")
  (footsteps m))

(cl:ensure-generic-function 'costs-val :lambda-list '(m))
(cl:defmethod costs-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:costs-val is deprecated.  Use humanoid_nav_msgs-srv:costs instead.")
  (costs m))

(cl:ensure-generic-function 'final_eps-val :lambda-list '(m))
(cl:defmethod final_eps-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:final_eps-val is deprecated.  Use humanoid_nav_msgs-srv:final_eps instead.")
  (final_eps m))

(cl:ensure-generic-function 'planning_time-val :lambda-list '(m))
(cl:defmethod planning_time-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:planning_time-val is deprecated.  Use humanoid_nav_msgs-srv:planning_time instead.")
  (planning_time m))

(cl:ensure-generic-function 'expanded_states-val :lambda-list '(m))
(cl:defmethod expanded_states-val ((m <PlanFootstepsBetweenFeet-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader humanoid_nav_msgs-srv:expanded_states-val is deprecated.  Use humanoid_nav_msgs-srv:expanded_states instead.")
  (expanded_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanFootstepsBetweenFeet-response>) ostream)
  "Serializes a message object of type '<PlanFootstepsBetweenFeet-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'footsteps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'footsteps))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'costs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_eps))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'planning_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'expanded_states)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanFootstepsBetweenFeet-response>) istream)
  "Deserializes a message object of type '<PlanFootstepsBetweenFeet-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:setf (cl:slot-value msg 'costs) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_eps) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'planning_time) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'expanded_states) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanFootstepsBetweenFeet-response>)))
  "Returns string type for a service object of type '<PlanFootstepsBetweenFeet-response>"
  "humanoid_nav_msgs/PlanFootstepsBetweenFeetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootstepsBetweenFeet-response)))
  "Returns string type for a service object of type 'PlanFootstepsBetweenFeet-response"
  "humanoid_nav_msgs/PlanFootstepsBetweenFeetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanFootstepsBetweenFeet-response>)))
  "Returns md5sum for a message object of type '<PlanFootstepsBetweenFeet-response>"
  "a4b63c1d84c3783139a04f9abafe7214")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanFootstepsBetweenFeet-response)))
  "Returns md5sum for a message object of type 'PlanFootstepsBetweenFeet-response"
  "a4b63c1d84c3783139a04f9abafe7214")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanFootstepsBetweenFeet-response>)))
  "Returns full string definition for message of type '<PlanFootstepsBetweenFeet-response>"
  (cl:format cl:nil "bool result~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 costs~%float64 final_eps~%float64 planning_time~%int64 expanded_states~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanFootstepsBetweenFeet-response)))
  "Returns full string definition for message of type 'PlanFootstepsBetweenFeet-response"
  (cl:format cl:nil "bool result~%humanoid_nav_msgs/StepTarget[] footsteps~%float64 costs~%float64 final_eps~%float64 planning_time~%int64 expanded_states~%~%~%================================================================================~%MSG: humanoid_nav_msgs/StepTarget~%# Target for a single stepping motion of a humanoid's leg~%~%geometry_msgs/Pose2D pose   # step pose as relative offset to last leg~%uint8 leg                   # which leg to use (left/right, see below)~%~%uint8 right=0               # right leg constant~%uint8 left=1                # left leg constant~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanFootstepsBetweenFeet-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'footsteps) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanFootstepsBetweenFeet-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanFootstepsBetweenFeet-response
    (cl:cons ':result (result msg))
    (cl:cons ':footsteps (footsteps msg))
    (cl:cons ':costs (costs msg))
    (cl:cons ':final_eps (final_eps msg))
    (cl:cons ':planning_time (planning_time msg))
    (cl:cons ':expanded_states (expanded_states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanFootstepsBetweenFeet)))
  'PlanFootstepsBetweenFeet-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanFootstepsBetweenFeet)))
  'PlanFootstepsBetweenFeet-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanFootstepsBetweenFeet)))
  "Returns string type for a service object of type '<PlanFootstepsBetweenFeet>"
  "humanoid_nav_msgs/PlanFootstepsBetweenFeet")