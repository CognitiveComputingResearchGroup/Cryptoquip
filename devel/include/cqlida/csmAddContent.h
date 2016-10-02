// Generated by gencpp from file cqlida/csmAddContent.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMADDCONTENT_H
#define CQLIDA_MESSAGE_CSMADDCONTENT_H

#include <ros/service_traits.h>


#include <cqlida/csmAddContentRequest.h>
#include <cqlida/csmAddContentResponse.h>


namespace cqlida
{

struct csmAddContent
{

typedef csmAddContentRequest Request;
typedef csmAddContentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct csmAddContent
} // namespace cqlida


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cqlida::csmAddContent > {
  static const char* value()
  {
    return "c65617913ec357532e90aa89ea8db840";
  }

  static const char* value(const ::cqlida::csmAddContent&) { return value(); }
};

template<>
struct DataType< ::cqlida::csmAddContent > {
  static const char* value()
  {
    return "cqlida/csmAddContent";
  }

  static const char* value(const ::cqlida::csmAddContent&) { return value(); }
};


// service_traits::MD5Sum< ::cqlida::csmAddContentRequest> should match 
// service_traits::MD5Sum< ::cqlida::csmAddContent > 
template<>
struct MD5Sum< ::cqlida::csmAddContentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmAddContent >::value();
  }
  static const char* value(const ::cqlida::csmAddContentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmAddContentRequest> should match 
// service_traits::DataType< ::cqlida::csmAddContent > 
template<>
struct DataType< ::cqlida::csmAddContentRequest>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmAddContent >::value();
  }
  static const char* value(const ::cqlida::csmAddContentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cqlida::csmAddContentResponse> should match 
// service_traits::MD5Sum< ::cqlida::csmAddContent > 
template<>
struct MD5Sum< ::cqlida::csmAddContentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmAddContent >::value();
  }
  static const char* value(const ::cqlida::csmAddContentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmAddContentResponse> should match 
// service_traits::DataType< ::cqlida::csmAddContent > 
template<>
struct DataType< ::cqlida::csmAddContentResponse>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmAddContent >::value();
  }
  static const char* value(const ::cqlida::csmAddContentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMADDCONTENT_H