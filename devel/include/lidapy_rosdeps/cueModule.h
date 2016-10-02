// Generated by gencpp from file lidapy_rosdeps/cueModule.msg
// DO NOT EDIT!


#ifndef LIDAPY_ROSDEPS_MESSAGE_CUEMODULE_H
#define LIDAPY_ROSDEPS_MESSAGE_CUEMODULE_H

#include <ros/service_traits.h>


#include <lidapy_rosdeps/cueModuleRequest.h>
#include <lidapy_rosdeps/cueModuleResponse.h>


namespace lidapy_rosdeps
{

struct cueModule
{

typedef cueModuleRequest Request;
typedef cueModuleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct cueModule
} // namespace lidapy_rosdeps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lidapy_rosdeps::cueModule > {
  static const char* value()
  {
    return "09e7477070ec280047cf1b603087f753";
  }

  static const char* value(const ::lidapy_rosdeps::cueModule&) { return value(); }
};

template<>
struct DataType< ::lidapy_rosdeps::cueModule > {
  static const char* value()
  {
    return "lidapy_rosdeps/cueModule";
  }

  static const char* value(const ::lidapy_rosdeps::cueModule&) { return value(); }
};


// service_traits::MD5Sum< ::lidapy_rosdeps::cueModuleRequest> should match 
// service_traits::MD5Sum< ::lidapy_rosdeps::cueModule > 
template<>
struct MD5Sum< ::lidapy_rosdeps::cueModuleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lidapy_rosdeps::cueModule >::value();
  }
  static const char* value(const ::lidapy_rosdeps::cueModuleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lidapy_rosdeps::cueModuleRequest> should match 
// service_traits::DataType< ::lidapy_rosdeps::cueModule > 
template<>
struct DataType< ::lidapy_rosdeps::cueModuleRequest>
{
  static const char* value()
  {
    return DataType< ::lidapy_rosdeps::cueModule >::value();
  }
  static const char* value(const ::lidapy_rosdeps::cueModuleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lidapy_rosdeps::cueModuleResponse> should match 
// service_traits::MD5Sum< ::lidapy_rosdeps::cueModule > 
template<>
struct MD5Sum< ::lidapy_rosdeps::cueModuleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lidapy_rosdeps::cueModule >::value();
  }
  static const char* value(const ::lidapy_rosdeps::cueModuleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lidapy_rosdeps::cueModuleResponse> should match 
// service_traits::DataType< ::lidapy_rosdeps::cueModule > 
template<>
struct DataType< ::lidapy_rosdeps::cueModuleResponse>
{
  static const char* value()
  {
    return DataType< ::lidapy_rosdeps::cueModule >::value();
  }
  static const char* value(const ::lidapy_rosdeps::cueModuleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LIDAPY_ROSDEPS_MESSAGE_CUEMODULE_H