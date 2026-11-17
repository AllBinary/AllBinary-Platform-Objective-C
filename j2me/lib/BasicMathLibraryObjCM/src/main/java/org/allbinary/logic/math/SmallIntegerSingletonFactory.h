#ifndef ORG_ALLBINARY_LOGIC_MATH_SMALLINTEGERSINGLETONFACTORY_H
#define ORG_ALLBINARY_LOGIC_MATH_SMALLINTEGERSINGLETONFACTORY_H
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
// package org.allbinary.logic.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SmallIntegerSingletonFactory;
@class AndroidUtil;
@class J2MEUtil;
@class LogUtil;
@class StringMaker;
#include "java/lang/Integer.h"

@interface SmallIntegerSingletonFactory : ABObject {
@public
    int32_t NEGATIVE_MAX;
    int32_t POSITIVE_MAX;
    int32_t* INTEGER_ARRAY;
    const char** STRING_ARRAY;
    int32_t MIN;
    int32_t lastMin;
    int32_t lastNegativeMin;
}
- (instancetype) init;
- (void) initFields;
+ (SmallIntegerSingletonFactory*) getInstance;
- (int32_t) getMin;
- (int32_t) getMinAllowed;
- (void) initWithRange:(int32_t)value :(int32_t)negativeValue;
- (void) init_;
- (int32_t) getAt:(int32_t)index;
- (int32_t) getAtNoThrow:(int32_t)index;
- (int32_t) createInstance:(int32_t)index;
- (const char*) getString:(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SmallIntegerSingletonFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_SMALLINTEGERSINGLETONFACTORY_H
