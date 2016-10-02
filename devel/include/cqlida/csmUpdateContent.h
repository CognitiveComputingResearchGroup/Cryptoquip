// Generated by gencpp from file cqlida/csmUpdateContent.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMUPDATECONTENT_H
#define CQLIDA_MESSAGE_CSMUPDATECONTENT_H

#include <ros/service_traits.h>


#include <cqlida/csmUpdateContentRequest.h>
#include <cqlida/csmUpdateContentResponse.h>


namespace cqlida
{

struct csmUpdateContent
{

typedef csmUpdateContentRequest Request;
typedef csmUpdateContentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct csmUpdateContent
} // namespace cqlida


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cqlida::csmUpdateContent > {
  static const char* value()
  {
    return "b5c6fc7694e25a71c58a14b8a055ecb1";
  }

  static const char* value(const ::cqlida::csmUpdateContent&) { return value(); }
};

template<>
struct DataType< ::cqlida::csmUpdateContent > {
  static const char* value()
  {
    return "cqlida/csmUpdateContent";
  }

  static const char* value(const ::cqlida::csmUpdateContent&) { return value(); }
};


// service_traits::MD5Sum< ::cqlida::csmUpdateContentRequest> should match 
// service_traits::MD5Sum< ::cqlida::csmUpdateContent > 
template<>
struct MD5Sum< ::cqlida::csmUpdateContentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmUpdateContent >::value();
  }
  static const char* value(const ::cqlida::csmUpdateContentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmUpdateContentRequest> should match 
// service_traits::DataType< ::cqlida::csmUpdateContent > 
template<>
struct DataType< ::cqlida::csmUpdateContentRequest>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmUpdateContent >::value();
  }
  static const char* value(const ::cqlida::csmUpdateContentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cqlida::csmUpdateContentResponse> should match 
// service_traits::MD5Sum< ::cqlida::csmUpdateContent > 
template<>
struct MD5Sum< ::cqlida::csmUpdateContentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmUpdateContent >::value();
  }
  static const char* value(const ::cqlida::csmUpdateContentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmUpdateContentResponse> should match 
// service_traits::DataType< ::cqlida::csmUpdateContent > 
template<>
struct DataType< ::cqlida::csmUpdateContentResponse>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmUpdateContent >::value();
  }
  static const char* value(const ::cqlida::csmUpdateContentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMUPDATECONTENT_H