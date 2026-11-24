#ifndef ORG_ALLBINARY_LOGIC_MATH_SMALLLONGFACTORY_H
#define ORG_ALLBINARY_LOGIC_MATH_SMALLLONGFACTORY_H
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
@class SmallLongFactory;
#include "java/lang/Long.h"

@interface SmallLongFactory : ABObject {
@public
    int32_t NEGATIVE_MAX;
    int32_t POSITIVE_MAX;
    int64_t* INTEGER_ARRAY;
    const char** STRING_ARRAY;
    int32_t MIN;
    int32_t lastMin;
    int32_t lastNegativeMin;
}
- (instancetype) init;
- (void) initFields;
+ (SmallLongFactory*) getInstance;
- (void) initWithRange:(int32_t)value :(int32_t)negativeValue;
- (void) initMethod;
- (int64_t) getInstanceNoThrow:(int64_t)index;
- (const char*) getString:(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SmallLongFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_SMALLLONGFACTORY_H
