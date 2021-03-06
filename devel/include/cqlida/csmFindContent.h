// Generated by gencpp from file cqlida/csmFindContent.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMFINDCONTENT_H
#define CQLIDA_MESSAGE_CSMFINDCONTENT_H

#include <ros/service_traits.h>


#include <cqlida/csmFindContentRequest.h>
#include <cqlida/csmFindContentResponse.h>


namespace cqlida
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
} // namespace cqlida


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cqlida::csmFindContent > {
  static const char* value()
  {
    return "d90a18b8ffa9e23fbba9c4f8396a3ed2";
  }

  static const char* value(const ::cqlida::csmFindContent&) { return value(); }
};

template<>
struct DataType< ::cqlida::csmFindContent > {
  static const char* value()
  {
    return "cqlida/csmFindContent";
  }

  static const char* value(const ::cqlida::csmFindContent&) { return value(); }
};


// service_traits::MD5Sum< ::cqlida::csmFindContentRequest> should match 
// service_traits::MD5Sum< ::cqlida::csmFindContent > 
template<>
struct MD5Sum< ::cqlida::csmFindContentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmFindContent >::value();
  }
  static const char* value(const ::cqlida::csmFindContentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmFindContentRequest> should match 
// service_traits::DataType< ::cqlida::csmFindContent > 
template<>
struct DataType< ::cqlida::csmFindContentRequest>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmFindContent >::value();
  }
  static const char* value(const ::cqlida::csmFindContentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cqlida::csmFindContentResponse> should match 
// service_traits::MD5Sum< ::cqlida::csmFindContent > 
template<>
struct MD5Sum< ::cqlida::csmFindContentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmFindContent >::value();
  }
  static const char* value(const ::cqlida::csmFindContentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmFindContentResponse> should match 
// service_traits::DataType< ::cqlida::csmFindContent > 
template<>
struct DataType< ::cqlida::csmFindContentResponse>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmFindContent >::value();
  }
  static const char* value(const ::cqlida::csmFindContentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMFINDCONTENT_H
