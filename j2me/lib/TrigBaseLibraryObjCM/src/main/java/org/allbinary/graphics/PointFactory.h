#ifndef ORG_ALLBINARY_GRAPHICS_POINTFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_POINTFACTORY_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PointFactory;
@class JsType;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class GPoint;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

@interface PointFactory : ABObject {
@public
    GPoint* ZERO_ZERO;
}
- (instancetype) init;
- (void) initFields;
+ (PointFactory*) getInstance;
- (void) init_;
- (GPoint*) createXY:(int32_t)x :(int32_t)y;
- (GPoint*) createXYZ:(int32_t)x :(int32_t)y :(int32_t)z;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PointFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_POINTFACTORY_H
