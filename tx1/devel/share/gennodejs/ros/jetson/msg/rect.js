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

class rect {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.width = null;
      this.heigth = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = [];
      }
      if (initObj.hasOwnProperty('heigth')) {
        this.heigth = initObj.heigth
      }
      else {
        this.heigth = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rect
    // Serialize message field [x]
    bufferOffset = _arraySerializer.int32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.int32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [width]
    bufferOffset = _arraySerializer.int32(obj.width, buffer, bufferOffset, null);
    // Serialize message field [heigth]
    bufferOffset = _arraySerializer.int32(obj.heigth, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rect
    let len;
    let data = new rect(null);
    // Deserialize message field [x]
    data.x = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [width]
    data.width = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [heigth]
    data.heigth = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.width.length;
    length += 4 * object.heigth.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetson/rect';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3bb0086045920a556a6ac0abe680912a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] x
    int32[] y
    int32[] width
    int32[] heigth
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rect(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = []
    }

    if (msg.heigth !== undefined) {
      resolved.heigth = msg.heigth;
    }
    else {
      resolved.heigth = []
    }

    return resolved;
    }
};

module.exports = rect;
