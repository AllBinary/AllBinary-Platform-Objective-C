#ifndef ORG_APACHE_XMLRPC_XMLRPCHANDLER_H
#define ORG_APACHE_XMLRPC_XMLRPCHANDLER_H
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
@class XmlRpcHandler;
@class BasicArrayList;
@class BasicArrayListD;
// #include "org/allbinary/util/BasicArrayListD.h"

@protocol XmlRpcHandler
- (id) execute:(const char*)method :(BasicArrayList*)params;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void XmlRpcHandler_staticInit(void);


#endif // ORG_APACHE_XMLRPC_XMLRPCHANDLER_H
