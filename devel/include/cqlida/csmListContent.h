// Generated by gencpp from file cqlida/csmListContent.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_CSMLISTCONTENT_H
#define CQLIDA_MESSAGE_CSMLISTCONTENT_H

#include <ros/service_traits.h>


#include <cqlida/csmListContentRequest.h>
#include <cqlida/csmListContentResponse.h>


namespace cqlida
{

struct csmListContent
{

typedef csmListContentRequest Request;
typedef csmListContentResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct csmListContent
} // namespace cqlida


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cqlida::csmListContent > {
  static const char* value()
  {
    return "03e4330075f540fcfbaafbb883d34643";
  }

  static const char* value(const ::cqlida::csmListContent&) { return value(); }
};

template<>
struct DataType< ::cqlida::csmListContent > {
  static const char* value()
  {
    return "cqlida/csmListContent";
  }

  static const char* value(const ::cqlida::csmListContent&) { return value(); }
};


// service_traits::MD5Sum< ::cqlida::csmListContentRequest> should match 
// service_traits::MD5Sum< ::cqlida::csmListContent > 
template<>
struct MD5Sum< ::cqlida::csmListContentRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmListContent >::value();
  }
  static const char* value(const ::cqlida::csmListContentRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmListContentRequest> should match 
// service_traits::DataType< ::cqlida::csmListContent > 
template<>
struct DataType< ::cqlida::csmListContentRequest>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmListContent >::value();
  }
  static const char* value(const ::cqlida::csmListContentRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cqlida::csmListContentResponse> should match 
// service_traits::MD5Sum< ::cqlida::csmListContent > 
template<>
struct MD5Sum< ::cqlida::csmListContentResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::csmListContent >::value();
  }
  static const char* value(const ::cqlida::csmListContentResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::csmListContentResponse> should match 
// service_traits::DataType< ::cqlida::csmListContent > 
template<>
struct DataType< ::cqlida::csmListContentResponse>
{
  static const char* value()
  {
    return DataType< ::cqlida::csmListContent >::value();
  }
  static const char* value(const ::cqlida::csmListContentResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CQLIDA_MESSAGE_CSMLISTCONTENT_H
