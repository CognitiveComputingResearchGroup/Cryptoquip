// Generated by gencpp from file cqlida/csmUpdateContentResponse.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMUPDATECONTENTRESPONSE_H
#define CQLIDA_MESSAGE_CSMUPDATECONTENTRESPONSE_H


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
struct csmUpdateContentResponse_
{
  typedef csmUpdateContentResponse_<ContainerAllocator> Type;

  csmUpdateContentResponse_()
    : results()  {
    }
  csmUpdateContentResponse_(const ContainerAllocator& _alloc)
    : results(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::cqlida::KeyValues_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::cqlida::KeyValues_<ContainerAllocator> >::other >  _results_type;
  _results_type results;




  typedef boost::shared_ptr< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> const> ConstPtr;

}; // struct csmUpdateContentResponse_

typedef ::cqlida::csmUpdateContentResponse_<std::allocator<void> > csmUpdateContentResponse;

typedef boost::shared_ptr< ::cqlida::csmUpdateContentResponse > csmUpdateContentResponsePtr;
typedef boost::shared_ptr< ::cqlida::csmUpdateContentResponse const> csmUpdateContentResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cqlida::csmUpdateContentResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bf3e973cc239e9103177bd5f1fb428e6";
  }

  static const char* value(const ::cqlida::csmUpdateContentResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbf3e973cc239e910ULL;
  static const uint64_t static_value2 = 0x3177bd5f1fb428e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/csmUpdateContentResponse";
  }

  static const char* value(const ::cqlida::csmUpdateContentResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/KeyValues[] results\n\
\n\
\n\
================================================================================\n\
MSG: cqlida/KeyValues\n\
string key\n\
string[] values\n\
";
  }

  static const char* value(const ::cqlida::csmUpdateContentResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.results);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct csmUpdateContentResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cqlida::csmUpdateContentResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cqlida::csmUpdateContentResponse_<ContainerAllocator>& v)
  {
    s << indent << "results[]" << std::endl;
    for (size_t i = 0; i < v.results.size(); ++i)
    {
      s << indent << "  results[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::cqlida::KeyValues_<ContainerAllocator> >::stream(s, indent + "    ", v.results[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMUPDATECONTENTRESPONSE_H
