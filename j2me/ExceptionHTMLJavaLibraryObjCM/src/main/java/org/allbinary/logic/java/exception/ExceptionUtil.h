#ifndef ORG_ALLBINARY_LOGIC_JAVA_EXCEPTION_EXCEPTIONUTIL_H
#define ORG_ALLBINARY_LOGIC_JAVA_EXCEPTION_EXCEPTIONUTIL_H
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
// package org.allbinary.logic.java.exception

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ExceptionUtil;
@class JsType;
// #include "jsinterop/annotations/JsType.h"

//ActualPlatform
@interface ExceptionUtil : ABObject {
@public
    const char* NONE;
}
- (instancetype) init;
- (void) initFields;
+ (ExceptionUtil*) getInstance;
- (const char*) getStackTrace:(JavaException*)e;
@end

extern JavaException* ExceptionUtil_PRETEND_EXCEPTION;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ExceptionUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_JAVA_EXCEPTION_EXCEPTIONUTIL_H
