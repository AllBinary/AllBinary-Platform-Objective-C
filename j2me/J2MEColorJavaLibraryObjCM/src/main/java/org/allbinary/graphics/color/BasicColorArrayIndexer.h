#ifndef ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORARRAYINDEXER_H
#define ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORARRAYINDEXER_H
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
// package org.allbinary.graphics.color

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicColorArrayIndexer;
@class JsType;
@class CircularIndexUtil;
@class JsMethod;
@class JsConstructor;
@class BasicColor;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

@interface BasicColorArrayIndexer : ABObject {
@public
    BasicColor** basicColorArray;
    CircularIndexUtil* circularIndexUtil;
}
- (instancetype) init:(BasicColor**)basicColorArray;
- (void) initFields;
- (void) next;
- (BasicColor*) get;
- (BasicColor**) getBasicColorArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicColorArrayIndexer_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_COLOR_BASICCOLORARRAYINDEXER_H
