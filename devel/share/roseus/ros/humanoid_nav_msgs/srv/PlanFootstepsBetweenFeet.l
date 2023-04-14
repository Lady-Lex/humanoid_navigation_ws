;; Auto-generated. Do not edit!


(when (boundp 'humanoid_nav_msgs::PlanFootstepsBetweenFeet)
  (if (not (find-package "HUMANOID_NAV_MSGS"))
    (make-package "HUMANOID_NAV_MSGS"))
  (shadow 'PlanFootstepsBetweenFeet (find-package "HUMANOID_NAV_MSGS")))
(unless (find-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEET")
  (make-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEET"))
(unless (find-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEETREQUEST")
  (make-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEETREQUEST"))
(unless (find-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEETRESPONSE")
  (make-package "HUMANOID_NAV_MSGS::PLANFOOTSTEPSBETWEENFEETRESPONSE"))

(in-package "ROS")





(defclass humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest
  :super ros::object
  :slots (_start_left _start_right _goal_left _goal_right ))

(defmethod humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest
  (:init
   (&key
    ((:start_left __start_left) (instance humanoid_nav_msgs::StepTarget :init))
    ((:start_right __start_right) (instance humanoid_nav_msgs::StepTarget :init))
    ((:goal_left __goal_left) (instance humanoid_nav_msgs::StepTarget :init))
    ((:goal_right __goal_right) (instance humanoid_nav_msgs::StepTarget :init))
    )
   (send-super :init)
   (setq _start_left __start_left)
   (setq _start_right __start_right)
   (setq _goal_left __goal_left)
   (setq _goal_right __goal_right)
   self)
  (:start_left
   (&rest __start_left)
   (if (keywordp (car __start_left))
       (send* _start_left __start_left)
     (progn
       (if __start_left (setq _start_left (car __start_left)))
       _start_left)))
  (:start_right
   (&rest __start_right)
   (if (keywordp (car __start_right))
       (send* _start_right __start_right)
     (progn
       (if __start_right (setq _start_right (car __start_right)))
       _start_right)))
  (:goal_left
   (&rest __goal_left)
   (if (keywordp (car __goal_left))
       (send* _goal_left __goal_left)
     (progn
       (if __goal_left (setq _goal_left (car __goal_left)))
       _goal_left)))
  (:goal_right
   (&rest __goal_right)
   (if (keywordp (car __goal_right))
       (send* _goal_right __goal_right)
     (progn
       (if __goal_right (setq _goal_right (car __goal_right)))
       _goal_right)))
  (:serialization-length
   ()
   (+
    ;; humanoid_nav_msgs/StepTarget _start_left
    (send _start_left :serialization-length)
    ;; humanoid_nav_msgs/StepTarget _start_right
    (send _start_right :serialization-length)
    ;; humanoid_nav_msgs/StepTarget _goal_left
    (send _goal_left :serialization-length)
    ;; humanoid_nav_msgs/StepTarget _goal_right
    (send _goal_right :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; humanoid_nav_msgs/StepTarget _start_left
       (send _start_left :serialize s)
     ;; humanoid_nav_msgs/StepTarget _start_right
       (send _start_right :serialize s)
     ;; humanoid_nav_msgs/StepTarget _goal_left
       (send _goal_left :serialize s)
     ;; humanoid_nav_msgs/StepTarget _goal_right
       (send _goal_right :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; humanoid_nav_msgs/StepTarget _start_left
     (send _start_left :deserialize buf ptr-) (incf ptr- (send _start_left :serialization-length))
   ;; humanoid_nav_msgs/StepTarget _start_right
     (send _start_right :deserialize buf ptr-) (incf ptr- (send _start_right :serialization-length))
   ;; humanoid_nav_msgs/StepTarget _goal_left
     (send _goal_left :deserialize buf ptr-) (incf ptr- (send _goal_left :serialization-length))
   ;; humanoid_nav_msgs/StepTarget _goal_right
     (send _goal_right :deserialize buf ptr-) (incf ptr- (send _goal_right :serialization-length))
   ;;
   self)
  )

(defclass humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse
  :super ros::object
  :slots (_result _footsteps _costs _final_eps _planning_time _expanded_states ))

(defmethod humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse
  (:init
   (&key
    ((:result __result) nil)
    ((:footsteps __footsteps) (let (r) (dotimes (i 0) (push (instance humanoid_nav_msgs::StepTarget :init) r)) r))
    ((:costs __costs) 0.0)
    ((:final_eps __final_eps) 0.0)
    ((:planning_time __planning_time) 0.0)
    ((:expanded_states __expanded_states) 0)
    )
   (send-super :init)
   (setq _result __result)
   (setq _footsteps __footsteps)
   (setq _costs (float __costs))
   (setq _final_eps (float __final_eps))
   (setq _planning_time (float __planning_time))
   (setq _expanded_states (round __expanded_states))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:footsteps
   (&rest __footsteps)
   (if (keywordp (car __footsteps))
       (send* _footsteps __footsteps)
     (progn
       (if __footsteps (setq _footsteps (car __footsteps)))
       _footsteps)))
  (:costs
   (&optional __costs)
   (if __costs (setq _costs __costs)) _costs)
  (:final_eps
   (&optional __final_eps)
   (if __final_eps (setq _final_eps __final_eps)) _final_eps)
  (:planning_time
   (&optional __planning_time)
   (if __planning_time (setq _planning_time __planning_time)) _planning_time)
  (:expanded_states
   (&optional __expanded_states)
   (if __expanded_states (setq _expanded_states __expanded_states)) _expanded_states)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ;; humanoid_nav_msgs/StepTarget[] _footsteps
    (apply #'+ (send-all _footsteps :serialization-length)) 4
    ;; float64 _costs
    8
    ;; float64 _final_eps
    8
    ;; float64 _planning_time
    8
    ;; int64 _expanded_states
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;; humanoid_nav_msgs/StepTarget[] _footsteps
     (write-long (length _footsteps) s)
     (dolist (elem _footsteps)
       (send elem :serialize s)
       )
     ;; float64 _costs
       (sys::poke _costs (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_eps
       (sys::poke _final_eps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _planning_time
       (sys::poke _planning_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int64 _expanded_states
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _expanded_states (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _expanded_states) (= (length (_expanded_states . bv)) 2)) ;; bignum
              (write-long (ash (elt (_expanded_states . bv) 0) 0) s)
              (write-long (ash (elt (_expanded_states . bv) 1) -1) s))
             ((and (class _expanded_states) (= (length (_expanded_states . bv)) 1)) ;; big1
              (write-long (elt (_expanded_states . bv) 0) s)
              (write-long (if (>= _expanded_states 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _expanded_states s)(write-long (if (>= _expanded_states 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; humanoid_nav_msgs/StepTarget[] _footsteps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _footsteps (let (r) (dotimes (i n) (push (instance humanoid_nav_msgs::StepTarget :init) r)) r))
     (dolist (elem- _footsteps)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _costs
     (setq _costs (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_eps
     (setq _final_eps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _planning_time
     (setq _planning_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int64 _expanded_states
#+(or :alpha :irix6 :x86_64)
      (setf _expanded_states (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _expanded_states (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass humanoid_nav_msgs::PlanFootstepsBetweenFeet
  :super ros::object
  :slots ())

(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeet :md5sum-) "a4b63c1d84c3783139a04f9abafe7214")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeet :datatype-) "humanoid_nav_msgs/PlanFootstepsBetweenFeet")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeet :request) humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest)
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeet :response) humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse)

(defmethod humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest
  (:response () (instance humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse :init)))

(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest :md5sum-) "a4b63c1d84c3783139a04f9abafe7214")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest :datatype-) "humanoid_nav_msgs/PlanFootstepsBetweenFeetRequest")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetRequest :definition-)
      "humanoid_nav_msgs/StepTarget start_left
humanoid_nav_msgs/StepTarget start_right
humanoid_nav_msgs/StepTarget goal_left
humanoid_nav_msgs/StepTarget goal_right

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
bool result
humanoid_nav_msgs/StepTarget[] footsteps
float64 costs
float64 final_eps
float64 planning_time
int64 expanded_states


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

(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse :md5sum-) "a4b63c1d84c3783139a04f9abafe7214")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse :datatype-) "humanoid_nav_msgs/PlanFootstepsBetweenFeetResponse")
(setf (get humanoid_nav_msgs::PlanFootstepsBetweenFeetResponse :definition-)
      "humanoid_nav_msgs/StepTarget start_left
humanoid_nav_msgs/StepTarget start_right
humanoid_nav_msgs/StepTarget goal_left
humanoid_nav_msgs/StepTarget goal_right

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
bool result
humanoid_nav_msgs/StepTarget[] footsteps
float64 costs
float64 final_eps
float64 planning_time
int64 expanded_states


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



(provide :humanoid_nav_msgs/PlanFootstepsBetweenFeet "a4b63c1d84c3783139a04f9abafe7214")


