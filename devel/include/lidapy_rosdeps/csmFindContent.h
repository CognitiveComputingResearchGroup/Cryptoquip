// Generated by gencpp from file lidapy_rosdeps/csmFindContent.msg
// DO NOT EDIT!


#ifndef LIDAPY_ROSDEPS_MESSAGE_CSMFINDCONTENT_H
#define LIDAPY_ROSDEPS_MESSAGE_CSMFINDCONTENT_H

#include <ros/service_traits.h>


#include <lidapy_rosdeps/csmFindContentRequest.h>
#include <lidapy_rosdeps/csmFindContentResponse.h>


namespace lidapy_rosdeps
{

struct csmFindContent
{

typedef csmFindContentRequest Request;
typedef csmFindContentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct csmFindContent
} // namespace lidapy_rosdeps


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::lidapy_rosdeps::csmFindContent > {
  static const char* value()
  {
    return "d90a18b8ffa9e23fbba9c4f8396a3ed2";
  }

  static const char* value(const ::lidapy_rosdeps::csmFindContent&) { return value(); }
};

template<>
struct DataType< ::lidapy_rosdeps::csmFindContent > {
  static const char* value()
  {
    return "lidapy_rosdeps/csmFindContent";
  }

  static const char* value(const ::lidapy_rosdeps::csmFindContent&) { return value(); }
};


// service_traits::MD5Sum< ::lidapy_rosdeps::csmFindContentRequest> should match 
// service_traits::MD5Sum< ::lidapy_rosdeps::csmFindContent > 
template<>
struct MD5Sum< ::lidapy_rosdeps::csmFindContentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::lidapy_rosdeps::csmFindContent >::value();
  }
  static const char* value(const ::lidapy_rosdeps::csmFindContentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::lidapy_rosdeps::csmFindContentRequest> should match 
// service_traits::DataType< ::lidapy_rosdeps::csmFindContent > 
template<>
struct DataType< ::lidapy_rosdeps::csmFindContentRequest>
{
  static const char* value()
  {
    return DataType< ::lidapy_rosdeps::csmFindContent >::value();
  }
  static const char* value(const ::lidapy_rosdeps::csmFindContentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::lidapy_rosdeps::csmFindContentResponse> should match 
// service_traits::MD5Sum< ::lidapy_rosdeps::csmFindContent > 
template<>
struct MD5Sum< ::lidapy_rosdeps::csmFindContentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::lidapy_rosdeps::csmFindContent >::value();
  }
  static const char* value(const ::lidapy_rosdeps::csmFindContentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::lidapy_rosdeps::csmFindContentResponse> should match 
// service_traits::DataType< ::lidapy_rosdeps::csmFindContent > 
template<>
struct DataType< ::lidapy_rosdeps::csmFindContentResponse>
{
  static const char* value()
  {
    return DataType< ::lidapy_rosdeps::csmFindContent >::value();
  }
  static const char* value(const ::lidapy_rosdeps::csmFindContentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // LIDAPY_ROSDEPS_MESSAGE_CSMFINDCONTENT_H
