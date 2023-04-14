// Auto-generated. Do not edit!

// (in-package humanoid_nav_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let StepTarget = require('../msg/StepTarget.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlanFootstepsBetweenFeetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_left = null;
      this.start_right = null;
      this.goal_left = null;
      this.goal_right = null;
    }
    else {
      if (initObj.hasOwnProperty('start_left')) {
        this.start_left = initObj.start_left
      }
      else {
        this.start_left = new StepTarget();
      }
      if (initObj.hasOwnProperty('start_right')) {
        this.start_right = initObj.start_right
      }
      else {
        this.start_right = new StepTarget();
      }
      if (initObj.hasOwnProperty('goal_left')) {
        this.goal_left = initObj.goal_left
      }
      else {
        this.goal_left = new StepTarget();
      }
      if (initObj.hasOwnProperty('goal_right')) {
        this.goal_right = initObj.goal_right
      }
      else {
        this.goal_right = new StepTarget();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanFootstepsBetweenFeetRequest
    // Serialize message field [start_left]
    bufferOffset = StepTarget.serialize(obj.start_left, buffer, bufferOffset);
    // Serialize message field [start_right]
    bufferOffset = StepTarget.serialize(obj.start_right, buffer, bufferOffset);
    // Serialize message field [goal_left]
    bufferOffset = StepTarget.serialize(obj.goal_left, buffer, bufferOffset);
    // Serialize message field [goal_right]
    bufferOffset = StepTarget.serialize(obj.goal_right, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanFootstepsBetweenFeetRequest
    let len;
    let data = new PlanFootstepsBetweenFeetRequest(null);
    // Deserialize message field [start_left]
    data.start_left = StepTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [start_right]
    data.start_right = StepTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_left]
    data.goal_left = StepTarget.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_right]
    data.goal_right = StepTarget.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 100;
  }

  static datatype() {
    // Returns string type for a service object
    return 'humanoid_nav_msgs/PlanFootstepsBetweenFeetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a081711eb51a4a4283b2b9f345efe272';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    humanoid_nav_msgs/StepTarget start_left
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanFootstepsBetweenFeetRequest(null);
    if (msg.start_left !== undefined) {
      resolved.start_left = StepTarget.Resolve(msg.start_left)
    }
    else {
      resolved.start_left = new StepTarget()
    }

    if (msg.start_right !== undefined) {
      resolved.start_right = StepTarget.Resolve(msg.start_right)
    }
    else {
      resolved.start_right = new StepTarget()
    }

    if (msg.goal_left !== undefined) {
      resolved.goal_left = StepTarget.Resolve(msg.goal_left)
    }
    else {
      resolved.goal_left = new StepTarget()
    }

    if (msg.goal_right !== undefined) {
      resolved.goal_right = StepTarget.Resolve(msg.goal_right)
    }
    else {
      resolved.goal_right = new StepTarget()
    }

    return resolved;
    }
};

class PlanFootstepsBetweenFeetResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.footsteps = null;
      this.costs = null;
      this.final_eps = null;
      this.planning_time = null;
      this.expanded_states = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('footsteps')) {
        this.footsteps = initObj.footsteps
      }
      else {
        this.footsteps = [];
      }
      if (initObj.hasOwnProperty('costs')) {
        this.costs = initObj.costs
      }
      else {
        this.costs = 0.0;
      }
      if (initObj.hasOwnProperty('final_eps')) {
        this.final_eps = initObj.final_eps
      }
      else {
        this.final_eps = 0.0;
      }
      if (initObj.hasOwnProperty('planning_time')) {
        this.planning_time = initObj.planning_time
      }
      else {
        this.planning_time = 0.0;
      }
      if (initObj.hasOwnProperty('expanded_states')) {
        this.expanded_states = initObj.expanded_states
      }
      else {
        this.expanded_states = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlanFootstepsBetweenFeetResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [footsteps]
    // Serialize the length for message field [footsteps]
    bufferOffset = _serializer.uint32(obj.footsteps.length, buffer, bufferOffset);
    obj.footsteps.forEach((val) => {
      bufferOffset = StepTarget.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [costs]
    bufferOffset = _serializer.float64(obj.costs, buffer, bufferOffset);
    // Serialize message field [final_eps]
    bufferOffset = _serializer.float64(obj.final_eps, buffer, bufferOffset);
    // Serialize message field [planning_time]
    bufferOffset = _serializer.float64(obj.planning_time, buffer, bufferOffset);
    // Serialize message field [expanded_states]
    bufferOffset = _serializer.int64(obj.expanded_states, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlanFootstepsBetweenFeetResponse
    let len;
    let data = new PlanFootstepsBetweenFeetResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [footsteps]
    // Deserialize array length for message field [footsteps]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.footsteps = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.footsteps[i] = StepTarget.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [costs]
    data.costs = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [final_eps]
    data.final_eps = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [planning_time]
    data.planning_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [expanded_states]
    data.expanded_states = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 25 * object.footsteps.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a service object
    return 'humanoid_nav_msgs/PlanFootstepsBetweenFeetResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1af07cd1d4ffe34a9a731e87aa13835c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlanFootstepsBetweenFeetResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.footsteps !== undefined) {
      resolved.footsteps = new Array(msg.footsteps.length);
      for (let i = 0; i < resolved.footsteps.length; ++i) {
        resolved.footsteps[i] = StepTarget.Resolve(msg.footsteps[i]);
      }
    }
    else {
      resolved.footsteps = []
    }

    if (msg.costs !== undefined) {
      resolved.costs = msg.costs;
    }
    else {
      resolved.costs = 0.0
    }

    if (msg.final_eps !== undefined) {
      resolved.final_eps = msg.final_eps;
    }
    else {
      resolved.final_eps = 0.0
    }

    if (msg.planning_time !== undefined) {
      resolved.planning_time = msg.planning_time;
    }
    else {
      resolved.planning_time = 0.0
    }

    if (msg.expanded_states !== undefined) {
      resolved.expanded_states = msg.expanded_states;
    }
    else {
      resolved.expanded_states = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PlanFootstepsBetweenFeetRequest,
  Response: PlanFootstepsBetweenFeetResponse,
  md5sum() { return 'a4b63c1d84c3783139a04f9abafe7214'; },
  datatype() { return 'humanoid_nav_msgs/PlanFootstepsBetweenFeet'; }
};
