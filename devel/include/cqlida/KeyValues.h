// Generated by gencpp from file cqlida/KeyValues.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_KEYVALUES_H
#define CQLIDA_MESSAGE_KEYVALUES_H


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
struct KeyValues_
{
  typedef KeyValues_<ContainerAllocator> Type;

  KeyValues_()
    : key()
    , values()  {
    }
  KeyValues_(const ContainerAllocator& _alloc)
    : key(_alloc)
    , values(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _key_type;
  _key_type key;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > , typename ContainerAllocator::template rebind<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::other >  _values_type;
  _values_type values;




  typedef boost::shared_ptr< ::cqlida::KeyValues_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::cqlida::KeyValues_<ContainerAllocator> const> ConstPtr;

}; // struct KeyValues_

typedef ::cqlida::KeyValues_<std::allocator<void> > KeyValues;

typedef boost::shared_ptr< ::cqlida::KeyValues > KeyValuesPtr;
typedef boost::shared_ptr< ::cqlida::KeyValues const> KeyValuesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::cqlida::KeyValues_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::cqlida::KeyValues_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::cqlida::KeyValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::cqlida::KeyValues_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::KeyValues_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::cqlida::KeyValues_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::KeyValues_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::cqlida::KeyValues_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::cqlida::KeyValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6d196653b1f7a7de793e3c36fccbd8c1";
  }

  static const char* value(const ::cqlida::KeyValues_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6d196653b1f7a7deULL;
  static const uint64_t static_value2 = 0x793e3c36fccbd8c1ULL;
};

template<class ContainerAllocator>
struct DataType< ::cqlida::KeyValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cqlida/KeyValues";
  }

  static const char* value(const ::cqlida::KeyValues_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::cqlida::KeyValues_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string key\n\
string[] values\n\
";
  }

  static const char* value(const ::cqlida::KeyValues_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::cqlida::KeyValues_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct KeyValues_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::cqlida::KeyValues_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::cqlida::KeyValues_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.key);
    s << indent << "values[]" << std::endl;
    for (size_t i = 0; i < v.values.size(); ++i)
    {
      s << indent << "  values[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CQLIDA_MESSAGE_KEYVALUES_H