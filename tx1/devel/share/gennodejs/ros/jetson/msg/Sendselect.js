// Auto-generated. Do not edit!

// (in-package jetson.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sendselect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.p1 = null;
      this.p2 = null;
      this.p3 = null;
      this.p4 = null;
    }
    else {
      if (initObj.hasOwnProperty('p1')) {
        this.p1 = initObj.p1
      }
      else {
        this.p1 = [];
      }
      if (initObj.hasOwnProperty('p2')) {
        this.p2 = initObj.p2
      }
      else {
        this.p2 = [];
      }
      if (initObj.hasOwnProperty('p3')) {
        this.p3 = initObj.p3
      }
      else {
        this.p3 = [];
      }
      if (initObj.hasOwnProperty('p4')) {
        this.p4 = initObj.p4
      }
      else {
        this.p4 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sendselect
    // Serialize message field [p1]
    bufferOffset = _arraySerializer.int32(obj.p1, buffer, bufferOffset, null);
    // Serialize message field [p2]
    bufferOffset = _arraySerializer.int32(obj.p2, buffer, bufferOffset, null);
    // Serialize message field [p3]
    bufferOffset = _arraySerializer.int32(obj.p3, buffer, bufferOffset, null);
    // Serialize message field [p4]
    bufferOffset = _arraySerializer.int32(obj.p4, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sendselect
    let len;
    let data = new Sendselect(null);
    // Deserialize message field [p1]
    data.p1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [p2]
    data.p2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [p3]
    data.p3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [p4]
    data.p4 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.p1.length;
    length += 4 * object.p2.length;
    length += 4 * object.p3.length;
    length += 4 * object.p4.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetson/Sendselect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8b5268e6173b27a274f80ce71e47b82b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] p1
    int32[] p2
    int32[] p3
    int32[] p4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sendselect(null);
    if (msg.p1 !== undefined) {
      resolved.p1 = msg.p1;
    }
    else {
      resolved.p1 = []
    }

    if (msg.p2 !== undefined) {
      resolved.p2 = msg.p2;
    }
    else {
      resolved.p2 = []
    }

    if (msg.p3 !== undefined) {
      resolved.p3 = msg.p3;
    }
    else {
      resolved.p3 = []
    }

    if (msg.p4 !== undefined) {
      resolved.p4 = msg.p4;
    }
    else {
      resolved.p4 = []
    }

    return resolved;
    }
};

module.exports = Sendselect;
