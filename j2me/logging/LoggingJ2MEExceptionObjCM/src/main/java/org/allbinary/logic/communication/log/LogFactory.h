#ifndef ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGFACTORY_H
#define ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGFACTORY_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.logic.communication.log

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LogFactory;
@class NullUtil;
@class StringUtil;
@class Log;
#if __has_include("org/allbinary/logic/communication/log/Log.h")
#include "org/allbinary/logic/communication/log/Log.h"
#endif

//ActualPlatform
@interface LogFactory : ABObject {
@public
}
- (instancetype) init;
+ (Log*) getInstanceD;
+ (Log*) getInstance:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception;
+ (Log*) getInstanceF:(const char*)specialMessage :(id)anyType :(const char*)functionName;
@end

extern Log* LogFactory_LOG;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LogFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGFACTORY_H
