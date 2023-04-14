;; Auto-generated. Do not edit!


(when (boundp 'humanoid_nav_msgs::StepTarget)
  (if (not (find-package "HUMANOID_NAV_MSGS"))
    (make-package "HUMANOID_NAV_MSGS"))
  (shadow 'StepTarget (find-package "HUMANOID_NAV_MSGS")))
(unless (find-package "HUMANOID_NAV_MSGS::STEPTARGET")
  (make-package "HUMANOID_NAV_MSGS::STEPTARGET"))

(in-package "ROS")
;;//! \htmlinclude StepTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*RIGHT*" (find-package "HUMANOID_NAV_MSGS::STEPTARGET"))
(shadow '*RIGHT* (find-package "HUMANOID_NAV_MSGS::STEPTARGET"))
(defconstant humanoid_nav_msgs::StepTarget::*RIGHT* 0)
(intern "*LEFT*" (find-package "HUMANOID_NAV_MSGS::STEPTARGET"))
(shadow '*LEFT* (find-package "HUMANOID_NAV_MSGS::STEPTARGET"))
(defconstant humanoid_nav_msgs::StepTarget::*LEFT* 1)
(defclass humanoid_nav_msgs::StepTarget
  :super ros::object
  :slots (_pose _leg ))

(defmethod humanoid_nav_msgs::StepTarget
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    ((:leg __leg) 0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _leg (round __leg))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:leg
   (&optional __leg)
   (if __leg (setq _leg __leg)) _leg)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ;; uint8 _leg
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;; uint8 _leg
       (write-byte _leg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; uint8 _leg
     (setq _leg (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get humanoid_nav_msgs::StepTarget :md5sum-) "8ccf34ddb67039fbda0d9b2515ebb1ea")
(setf (get humanoid_nav_msgs::StepTarget :datatype-) "humanoid_nav_msgs/StepTarget")
(setf (get humanoid_nav_msgs::StepTarget :definition-)
      "# Target for a single stepping motion of a humanoid's leg

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



(provide :humanoid_nav_msgs/StepTarget "8ccf34ddb67039fbda0d9b2515ebb1ea")


