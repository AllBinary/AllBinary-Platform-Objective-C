#ifndef ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGUTIL_H
#define ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGUTIL_H
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
@class LogUtil;
@class TsUtil;
@class StringMaker;
@class CommonSeps;
@class CommonStrings;
@class LogFormatUtil;
@class Log;
#include "java/lang/System.h"
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/logic/communication/log/LogFormatUtil.h")
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"
#endif

//ActualPlatform
@interface LogUtil : ABObject {
@public
    LogFormatUtil* logFormatUtil;
    const char* LOG_SUCCESS;
}
- (instancetype) init;
- (void) initFields;
+ (LogUtil*) getInstance;
- (void) putL:(Log*)log;
- (void) putF:(const char*)specialMessage :(id)anyType :(const char*)functionName;
- (void) putFS:(const char*)specialMessage :(const char*)className :(const char*)functionName;
- (void) put:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LogUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOGUTIL_H
