// Generated by gencpp from file cqlida/csmFindContentRequest.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMFINDCONTENTREQUEST_H
#define CQLIDA_MESSAGE_CSMFINDCONTENTREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <cqlida/KeyValues.h>

namespace cqlida
{
template <class ContainerAllocator>
struct csmFindContentRequest_
{
  typedef csmFindContentRequest_<ContainerAllocator> Type;

  csmFindContentRequest_()
    : filters()  {
    }
  csmFindContentRequest_(const ContainerAllocator& _alloc)
    : filters(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::cqlida::KeyValues_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cqlida::KeyValues_<ContainerAllocator> >::other >  _filters_type;
  _filters_type filters;




  typedef boost::shared_ptr< ::cqlida::csmFindContentRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cqlida::csmFindContentRequest_<ContainerAllocator> const> ConstPtr;

}; // struct csmFindContentRequest_

typedef ::cqlida::csmFindContentRequest_<std::allocator<void> > csmFindContentRequest;

typedef boost::shared_ptr< ::cqlida::csmFindContentRequest > csmFindContentRequestPtr;
typedef boost::shared_ptr< ::cqlida::csmFindContentRequest const> csmFindContentRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cqlida::csmFindContentRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cqlida::csmFindContentRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::csmFindContentRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::csmFindContentRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::csmFindContentRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dd0bab25a72f20ca759450a38b4ba9f4";
  }

  static const char* value(const ::cqlida::csmFindContentRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdd0bab25a72f20caULL;
  static const uint64_t static_value2 = 0x759450a38b4ba9f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/csmFindContentRequest";
  }

  static const char* value(const ::cqlida::csmFindContentRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/KeyValues[] filters\n\
\n\
================================================================================\n\
MSG: cqlida/KeyValues\n\
string key\n\
string[] values\n\
";
  }

  static const char* value(const ::cqlida::csmFindContentRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.filters);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct csmFindContentRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cqlida::csmFindContentRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cqlida::csmFindContentRequest_<ContainerAllocator>& v)
  {
    s << indent << "filters[]" << std::endl;
    for (size_t i = 0; i < v.filters.size(); ++i)
    {
      s << indent << "  filters[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cqlida::KeyValues_<ContainerAllocator> >::stream(s, indent + "    ", v.filters[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMFINDCONTENTREQUEST_H
