#ifndef ORG_APACHE_XMLRPC_XMLRPCCLIENT_H
#define ORG_APACHE_XMLRPC_XMLRPCCLIENT_H
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
@class XmlRpcClient;
@class BasicArrayList;
@class BasicArrayListD;
@class CryptInterface;
@class NullUtil;
@class XmlRpcHandler;
@class XmlRpcException;
#include "java/io/IOException.h"
#include "java/net/MalformedURLException.h"
#include "java/net/URL.h"
// #include "org/allbinary/util/BasicArrayListD.h"
#include "org/apache/xmlrpc/XmlRpcHandler.h"

@interface XmlRpcClient : ABObject <XmlRpcHandler> {
@public
    URL* url;
}
- (instancetype) init:(const char*)url;
- (void) initFields;
- (URL*) getURL;
- (void) setBasicAuthentication:(const char*)user :(const char*)password;
- (id) execute:(const char*)method :(BasicArrayList*)params;
- (id) executeWithCrypt:(const char*)method :(BasicArrayList*)params :(CryptInterface*)cryptInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void XmlRpcClient_staticInit(void);


#endif // ORG_APACHE_XMLRPC_XMLRPCCLIENT_H
