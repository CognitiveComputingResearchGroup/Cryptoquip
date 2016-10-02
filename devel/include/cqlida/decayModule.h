// Generated by gencpp from file cqlida/decayModule.msg
// DO NOT EDIT!


#ifndef CQLIDA_MESSAGE_DECAYMODULE_H
#define CQLIDA_MESSAGE_DECAYMODULE_H

#include <ros/service_traits.h>


#include <cqlida/decayModuleRequest.h>
#include <cqlida/decayModuleResponse.h>


namespace cqlida
{

struct decayModule
{

typedef decayModuleRequest Request;
typedef decayModuleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct decayModule
} // namespace cqlida


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::cqlida::decayModule > {
  static const char* value()
  {
    return "427a4bc49879904c5ed779ad55d5bbc8";
  }

  static const char* value(const ::cqlida::decayModule&) { return value(); }
};

template<>
struct DataType< ::cqlida::decayModule > {
  static const char* value()
  {
    return "cqlida/decayModule";
  }

  static const char* value(const ::cqlida::decayModule&) { return value(); }
};


// service_traits::MD5Sum< ::cqlida::decayModuleRequest> should match 
// service_traits::MD5Sum< ::cqlida::decayModule > 
template<>
struct MD5Sum< ::cqlida::decayModuleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::decayModule >::value();
  }
  static const char* value(const ::cqlida::decayModuleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::decayModuleRequest> should match 
// service_traits::DataType< ::cqlida::decayModule > 
template<>
struct DataType< ::cqlida::decayModuleRequest>
{
  static const char* value()
  {
    return DataType< ::cqlida::decayModule >::value();
  }
  static const char* value(const ::cqlida::decayModuleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::cqlida::decayModuleResponse> should match 
// service_traits::MD5Sum< ::cqlida::decayModule > 
template<>
struct MD5Sum< ::cqlida::decayModuleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::cqlida::decayModule >::value();
  }
  static const char* value(const ::cqlida::decayModuleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::cqlida::decayModuleResponse> should match 
// service_traits::DataType< ::cqlida::decayModule > 
template<>
struct DataType< ::cqlida::decayModuleResponse>
{
  static const char* value()
  {
    return DataType< ::cqlida::decayModule >::value();
  }
  static const char* value(const ::cqlida::decayModuleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CQLIDA_MESSAGE_DECAYMODULE_H