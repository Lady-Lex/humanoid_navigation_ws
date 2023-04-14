
(cl:in-package :asdf)

(defsystem "humanoid_nav_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :humanoid_nav_msgs-msg
)
  :components ((:file "_package")
    (:file "ClipFootstep" :depends-on ("_package_ClipFootstep"))
    (:file "_package_ClipFootstep" :depends-on ("_package"))
    (:file "PlanFootsteps" :depends-on ("_package_PlanFootsteps"))
    (:file "_package_PlanFootsteps" :depends-on ("_package"))
    (:file "PlanFootstepsBetweenFeet" :depends-on ("_package_PlanFootstepsBetweenFeet"))
    (:file "_package_PlanFootstepsBetweenFeet" :depends-on ("_package"))
    (:file "StepTargetService" :depends-on ("_package_StepTargetService"))
    (:file "_package_StepTargetService" :depends-on ("_package"))
  ))