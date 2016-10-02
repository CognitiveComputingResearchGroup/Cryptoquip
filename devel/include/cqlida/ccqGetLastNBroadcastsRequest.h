// Generated by gencpp from file cqlida/ccqGetLastNBroadcastsRequest.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSREQUEST_H
#define CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace cqlida
{
template <class ContainerAllocator>
struct ccqGetLastNBroadcastsRequest_
{
  typedef ccqGetLastNBroadcastsRequest_<ContainerAllocator> Type;

  ccqGetLastNBroadcastsRequest_()
    : last_n(0)  {
    }
  ccqGetLastNBroadcastsRequest_(const ContainerAllocator& _alloc)
    : last_n(0)  {
  (void)_alloc;
    }



   typedef int8_t _last_n_type;
  _last_n_type last_n;




  typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ccqGetLastNBroadcastsRequest_

typedef ::cqlida::ccqGetLastNBroadcastsRequest_<std::allocator<void> > ccqGetLastNBroadcastsRequest;

typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsRequest > ccqGetLastNBroadcastsRequestPtr;
typedef boost::shared_ptr< ::cqlida::ccqGetLastNBroadcastsRequest const> ccqGetLastNBroadcastsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace cqlida

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'cqlida': ['/home/stephen/Development/ccrg/Cryptoquip/src/cqlida/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2d52363367076746892e79be6b2d566";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2d5236336707674ULL;
  static const uint64_t static_value2 = 0x6892e79be6b2d566ULL;
};

template<class ContainerAllocator>
struct DataType< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/ccqGetLastNBroadcastsRequest";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int8 last_n\n\
";
  }

  static const char* value(const ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.last_n);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ccqGetLastNBroadcastsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cqlida::ccqGetLastNBroadcastsRequest_<ContainerAllocator>& v)
  {
    s << indent << "last_n: ";
    Printer<int8_t>::stream(s, indent + "  ", v.last_n);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CQLIDA_MESSAGE_CCQGETLASTNBROADCASTSREQUEST_H
