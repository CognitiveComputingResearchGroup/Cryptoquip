// Generated by gencpp from file cqlida/ccqGetLastNBroadcastsResponse.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSRESPONSE_H
#define CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cqlida/CognitiveContent.h>

namespace cqlida
{
template <class ContainerAllocator>
struct ccqGetLastNBroadcastsResponse_
{
  typedef ccqGetLastNBroadcastsResponse_<ContainerAllocator> Type;

  ccqGetLastNBroadcastsResponse_()
    : items()  {
    }
  ccqGetLastNBroadcastsResponse_(const ContainerAllocator& _alloc)
    : items(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::cqlida::CognitiveContent_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cqlida::CognitiveContent_<ContainerAllocator> >::other >  _items_type;
  _items_type items;




  typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ccqGetLastNBroadcastsResponse_

typedef ::cqlida::ccqGetLastNBroadcastsResponse_<std::allocator<void> > ccqGetLastNBroadcastsResponse;

typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsResponse > ccqGetLastNBroadcastsResponsePtr;
typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsResponse const> ccqGetLastNBroadcastsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cqlida

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'cqlida': ['/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e3f34e7efc0c20951928ac4ad2297462";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe3f34e7efc0c2095ULL;
  static const uint64_t static_value2 = 0x1928ac4ad2297462ULL;
};

template<class ContainerAllocator>
struct DataType< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/ccqGetLastNBroadcastsResponse";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/CognitiveContent[] items\n\
\n\
\n\
================================================================================\n\
MSG: cqlida/CognitiveContent\n\
Header header\n\
KeyValues[] elements\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: cqlida/KeyValues\n\
string key\n\
string[] values\n\
";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.items);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ccqGetLastNBroadcastsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cqlida::ccqGetLastNBroadcastsResponse_<ContainerAllocator>& v)
  {
    s << indent << "items[]" << std::endl;
    for (size_t i = 0; i < v.items.size(); ++i)
    {
      s << indent << "  items[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cqlida::CognitiveContent_<ContainerAllocator> >::stream(s, indent + "    ", v.items[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSRESPONSE_H
