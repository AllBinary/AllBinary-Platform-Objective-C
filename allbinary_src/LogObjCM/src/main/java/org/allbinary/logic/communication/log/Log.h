#ifndef ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOG_H
#define ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOG_H
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
@class Log;
@class CommonStrings;
@class LogFormatUtil;
#if __has_include("org/allbinary/logic/communication/log/LogFormatUtil.h")
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"
#endif

@interface Log : ABObject {
@public
    LogFormatUtil* logFormatUtil;
    const char* specialMessage;
    id anyType;
    const char* functionName;
    id exception;
}
- (instancetype) init:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception;
- (void) initFields;
- (const char*) getSpecialMessage;
- (id) getObject;
- (const char*) getFunctionName;
- (id) getThrowable;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Log_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_LOG_H
