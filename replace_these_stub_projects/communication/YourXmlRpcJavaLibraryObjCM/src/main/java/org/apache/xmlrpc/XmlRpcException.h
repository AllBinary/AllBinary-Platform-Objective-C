#ifndef ORG_APACHE_XMLRPC_XMLRPCEXCEPTION_H
#define ORG_APACHE_XMLRPC_XMLRPCEXCEPTION_H
// Generated Code Do Not Modify
// package org.apache.xmlrpc

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class XmlRpcException;
#include "java/lang/Throwable.h"

@interface XmlRpcException : Exception {
@public
}
- (instancetype) init:(int32_t)code :(const char*)message;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void XmlRpcException_staticInit(void);


#endif // ORG_APACHE_XMLRPC_XMLRPCEXCEPTION_H
