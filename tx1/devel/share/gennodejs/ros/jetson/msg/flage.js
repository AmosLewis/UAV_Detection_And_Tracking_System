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

class flage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flagTest = null;
    }
    else {
      if (initObj.hasOwnProperty('flagTest')) {
        this.flagTest = initObj.flagTest
      }
      else {
        this.flagTest = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type flage
    // Serialize message field [flagTest]
    bufferOffset = _serializer.int32(obj.flagTest, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type flage
    let len;
    let data = new flage(null);
    // Deserialize message field [flagTest]
    data.flagTest = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jetson/flage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be229d04a232400d9f235bb6eeba2e7d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 flagTest
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new flage(null);
    if (msg.flagTest !== undefined) {
      resolved.flagTest = msg.flagTest;
    }
    else {
      resolved.flagTest = 0
    }

    return resolved;
    }
};

module.exports = flage;
