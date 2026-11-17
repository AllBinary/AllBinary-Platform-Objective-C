#ifndef ORG_ALLBINARY_MATH_POSITIONSTRINGS_H
#define ORG_ALLBINARY_MATH_POSITIONSTRINGS_H
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
// package org.allbinary.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PositionStrings;
@class JsType;
@class JsMethod;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface PositionStrings : ABObject {
@public
    const char* X;
    const char* Y;
    const char* X_LABEL;
    const char* Y_LABEL;
    const char* Z_LABEL;
    const char* DX_LABEL;
    const char* DY_LABEL;
    const char* DZ_LABEL;
}
- (instancetype) init;
- (void) initFields;
+ (PositionStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PositionStrings_staticInit(void);


#endif // ORG_ALLBINARY_MATH_POSITIONSTRINGS_H
