#ifndef ORG_APACHE_XMLRPC_NULLXMLRPCHANDLER_H
#define ORG_APACHE_XMLRPC_NULLXMLRPCHANDLER_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
 *  
 * By agreeing to this license you and any business entity you represent are 
 * legally bound to the AllBinary Open License Version 1 legal agreement. 
 *  
 * You may obtain the AllBinary Open License Version 1 legal agreement from 
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
 *  
 * Created By: Travis Berthelot 
 *   
 */
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
@class NullXmlRpcHandler;
@class BasicArrayList;
@class BasicArrayListD;
@class NullUtil;
@class XmlRpcHandler;
// #include "org/allbinary/util/BasicArrayListD.h"
#include "org/apache/xmlrpc/XmlRpcHandler.h"

@interface NullXmlRpcHandler : ABObject <XmlRpcHandler> {
@public
}
- (instancetype) init;
- (id) execute:(const char*)method :(BasicArrayList*)params;
@end

extern NullXmlRpcHandler* NullXmlRpcHandler_NULL_XML_RPC_HANDLER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullXmlRpcHandler_staticInit(void);


#endif // ORG_APACHE_XMLRPC_NULLXMLRPCHANDLER_H
