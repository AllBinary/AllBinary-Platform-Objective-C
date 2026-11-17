#ifndef ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_PRELOGUTIL_H
#define ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_PRELOGUTIL_H
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
@class PreLogUtil;
@class NullUtil;
@class StringUtil;
@class CommonStrings;
@class LogFormatUtil;
// #include "org/allbinary/logic/string/StringUtil.h"
#include "java/lang/System.h"

//ActualPlatform
@interface PreLogUtil : ABObject {
@public
}
- (instancetype) init;
+ (void) put:(const char*)specialMessage :(id)anyType :(const char*)functionName;
+ (void) putOE:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception;
+ (void) putS:(const char*)specialMessage :(const char*)className :(const char*)functionName;
+ (void) putSE:(const char*)specialMessage :(const char*)className :(const char*)functionName :(id)exception;
+ (const char*) getClassName:(id)anyType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PreLogUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_COMMUNICATION_LOG_PRELOGUTIL_H
