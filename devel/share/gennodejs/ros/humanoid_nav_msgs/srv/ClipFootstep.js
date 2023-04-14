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

class ClipFootstepRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step = null;
    }
    else {
      if (initObj.hasOwnProperty('step')) {
        this.step = initObj.step
      }
      else {
        this.step = new StepTarget();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClipFootstepRequest
    // Serialize message field [step]
    bufferOffset = StepTarget.serialize(obj.step, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClipFootstepRequest
    let len;
    let data = new ClipFootstepRequest(null);
    // Deserialize message field [step]
    data.step = StepTarget.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'humanoid_nav_msgs/ClipFootstepRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f22cfce442b381849d82602383b052c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClipFootstepRequest(null);
    if (msg.step !== undefined) {
      resolved.step = StepTarget.Resolve(msg.step)
    }
    else {
      resolved.step = new StepTarget()
    }

    return resolved;
    }
};

class ClipFootstepResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.step = null;
    }
    else {
      if (initObj.hasOwnProperty('step')) {
        this.step = initObj.step
      }
      else {
        this.step = new StepTarget();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClipFootstepResponse
    // Serialize message field [step]
    bufferOffset = StepTarget.serialize(obj.step, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClipFootstepResponse
    let len;
    let data = new ClipFootstepResponse(null);
    // Deserialize message field [step]
    data.step = StepTarget.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a service object
    return 'humanoid_nav_msgs/ClipFootstepResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f22cfce442b381849d82602383b052c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClipFootstepResponse(null);
    if (msg.step !== undefined) {
      resolved.step = StepTarget.Resolve(msg.step)
    }
    else {
      resolved.step = new StepTarget()
    }

    return resolved;
    }
};

module.exports = {
  Request: ClipFootstepRequest,
  Response: ClipFootstepResponse,
  md5sum() { return '394ac576028f40af6569704f845b86a1'; },
  datatype() { return 'humanoid_nav_msgs/ClipFootstep'; }
};
