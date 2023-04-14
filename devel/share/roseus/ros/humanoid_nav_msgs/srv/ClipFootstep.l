;; Auto-generated. Do not edit!


(when (boundp 'humanoid_nav_msgs::ClipFootstep)
  (if (not (find-package "HUMANOID_NAV_MSGS"))
    (make-package "HUMANOID_NAV_MSGS"))
  (shadow 'ClipFootstep (find-package "HUMANOID_NAV_MSGS")))
(unless (find-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEP")
  (make-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEP"))
(unless (find-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEPREQUEST")
  (make-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEPREQUEST"))
(unless (find-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEPRESPONSE")
  (make-package "HUMANOID_NAV_MSGS::CLIPFOOTSTEPRESPONSE"))

(in-package "ROS")





(defclass humanoid_nav_msgs::ClipFootstepRequest
  :super ros::object
  :slots (_step ))

(defmethod humanoid_nav_msgs::ClipFootstepRequest
  (:init
   (&key
    ((:step __step) (instance humanoid_nav_msgs::StepTarget :init))
    )
   (send-super :init)
   (setq _step __step)
   self)
  (:step
   (&rest __step)
   (if (keywordp (car __step))
       (send* _step __step)
     (progn
       (if __step (setq _step (car __step)))
       _step)))
  (:serialization-length
   ()
   (+
    ;; humanoid_nav_msgs/StepTarget _step
    (send _step :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; humanoid_nav_msgs/StepTarget _step
       (send _step :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; humanoid_nav_msgs/StepTarget _step
     (send _step :deserialize buf ptr-) (incf ptr- (send _step :serialization-length))
   ;;
   self)
  )

(defclass humanoid_nav_msgs::ClipFootstepResponse
  :super ros::object
  :slots (_step ))

(defmethod humanoid_nav_msgs::ClipFootstepResponse
  (:init
   (&key
    ((:step __step) (instance humanoid_nav_msgs::StepTarget :init))
    )
   (send-super :init)
   (setq _step __step)
   self)
  (:step
   (&rest __step)
   (if (keywordp (car __step))
       (send* _step __step)
     (progn
       (if __step (setq _step (car __step)))
       _step)))
  (:serialization-length
   ()
   (+
    ;; humanoid_nav_msgs/StepTarget _step
    (send _step :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; humanoid_nav_msgs/StepTarget _step
       (send _step :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; humanoid_nav_msgs/StepTarget _step
     (send _step :deserialize buf ptr-) (incf ptr- (send _step :serialization-length))
   ;;
   self)
  )

(defclass humanoid_nav_msgs::ClipFootstep
  :super ros::object
  :slots ())

(setf (get humanoid_nav_msgs::ClipFootstep :md5sum-) "394ac576028f40af6569704f845b86a1")
(setf (get humanoid_nav_msgs::ClipFootstep :datatype-) "humanoid_nav_msgs/ClipFootstep")
(setf (get humanoid_nav_msgs::ClipFootstep :request) humanoid_nav_msgs::ClipFootstepRequest)
(setf (get humanoid_nav_msgs::ClipFootstep :response) humanoid_nav_msgs::ClipFootstepResponse)

(defmethod humanoid_nav_msgs::ClipFootstepRequest
  (:response () (instance humanoid_nav_msgs::ClipFootstepResponse :init)))

(setf (get humanoid_nav_msgs::ClipFootstepRequest :md5sum-) "394ac576028f40af6569704f845b86a1")
(setf (get humanoid_nav_msgs::ClipFootstepRequest :datatype-) "humanoid_nav_msgs/ClipFootstepRequest")
(setf (get humanoid_nav_msgs::ClipFootstepRequest :definition-)
      "StepTarget step

================================================================================
MSG: humanoid_nav_msgs/StepTarget
# Target for a single stepping motion of a humanoid's leg

geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
uint8 leg                   # which leg to use (left/right, see below)

uint8 right=0               # right leg constant
uint8 left=1                # left leg constant

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
StepTarget step


================================================================================
MSG: humanoid_nav_msgs/StepTarget
# Target for a single stepping motion of a humanoid's leg

geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
uint8 leg                   # which leg to use (left/right, see below)

uint8 right=0               # right leg constant
uint8 left=1                # left leg constant

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")

(setf (get humanoid_nav_msgs::ClipFootstepResponse :md5sum-) "394ac576028f40af6569704f845b86a1")
(setf (get humanoid_nav_msgs::ClipFootstepResponse :datatype-) "humanoid_nav_msgs/ClipFootstepResponse")
(setf (get humanoid_nav_msgs::ClipFootstepResponse :definition-)
      "StepTarget step

================================================================================
MSG: humanoid_nav_msgs/StepTarget
# Target for a single stepping motion of a humanoid's leg

geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
uint8 leg                   # which leg to use (left/right, see below)

uint8 right=0               # right leg constant
uint8 left=1                # left leg constant

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
StepTarget step


================================================================================
MSG: humanoid_nav_msgs/StepTarget
# Target for a single stepping motion of a humanoid's leg

geometry_msgs/Pose2D pose   # step pose as relative offset to last leg
uint8 leg                   # which leg to use (left/right, see below)

uint8 right=0               # right leg constant
uint8 left=1                # left leg constant

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
")



(provide :humanoid_nav_msgs/ClipFootstep "394ac576028f40af6569704f845b86a1")


