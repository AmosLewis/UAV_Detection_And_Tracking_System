// Generated by gencpp from file measurement/Uavpose.msg
// DO NOT EDIT!


#ifndef MEASUREMENT_MESSAGE_UAVPOSE_H
#define MEASUREMENT_MESSAGE_UAVPOSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace measurement
{
template <class ContainerAllocator>
struct Uavpose_
{
  typedef Uavpose_<ContainerAllocator> Type;

  Uavpose_()
    : uav_roll(0.0)
    , uav_pitch(0.0)
    , uav_yaw(0.0)  {
    }
  Uavpose_(const ContainerAllocator& _alloc)
    : uav_roll(0.0)
    , uav_pitch(0.0)
    , uav_yaw(0.0)  {
  (void)_alloc;
    }



   typedef float _uav_roll_type;
  _uav_roll_type uav_roll;

   typedef float _uav_pitch_type;
  _uav_pitch_type uav_pitch;

   typedef float _uav_yaw_type;
  _uav_yaw_type uav_yaw;




  typedef boost::shared_ptr< ::measurement::Uavpose_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::measurement::Uavpose_<ContainerAllocator> const> ConstPtr;

}; // struct Uavpose_

typedef ::measurement::Uavpose_<std::allocator<void> > Uavpose;

typedef boost::shared_ptr< ::measurement::Uavpose > UavposePtr;
typedef boost::shared_ptr< ::measurement::Uavpose const> UavposeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::measurement::Uavpose_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::measurement::Uavpose_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace measurement

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'measurement': ['/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/measurement/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::measurement::Uavpose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::measurement::Uavpose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::measurement::Uavpose_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::measurement::Uavpose_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::measurement::Uavpose_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::measurement::Uavpose_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::measurement::Uavpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "22e9cac41785208f8ab407803ec6c24f";
  }

  static const char* value(const ::measurement::Uavpose_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x22e9cac41785208fULL;
  static const uint64_t static_value2 = 0x8ab407803ec6c24fULL;
};

template<class ContainerAllocator>
struct DataType< ::measurement::Uavpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "measurement/Uavpose";
  }

  static const char* value(const ::measurement::Uavpose_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::measurement::Uavpose_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 uav_roll\n\
float32 uav_pitch\n\
float32 uav_yaw\n\
";
  }

  static const char* value(const ::measurement::Uavpose_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::measurement::Uavpose_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.uav_roll);
      stream.next(m.uav_pitch);
      stream.next(m.uav_yaw);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Uavpose_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::measurement::Uavpose_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::measurement::Uavpose_<ContainerAllocator>& v)
  {
    s << indent << "uav_roll: ";
    Printer<float>::stream(s, indent + "  ", v.uav_roll);
    s << indent << "uav_pitch: ";
    Printer<float>::stream(s, indent + "  ", v.uav_pitch);
    s << indent << "uav_yaw: ";
    Printer<float>::stream(s, indent + "  ", v.uav_yaw);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MEASUREMENT_MESSAGE_UAVPOSE_H