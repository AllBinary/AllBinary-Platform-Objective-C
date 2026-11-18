#ifndef ORG_ALLBINARY_GRAPHICS_PIPELINE_BASICGRAPHICSPIPELINE_H
#define ORG_ALLBINARY_GRAPHICS_PIPELINE_BASICGRAPHICSPIPELINE_H
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
// package org.allbinary.graphics.pipeline

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicGraphicsPipeline;
@class GPoint;
@class PointFactory;
@class Angle;
@class NoDecimalTrigTable;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/math/NoDecimalTrigTable.h")
#include "org/allbinary/math/NoDecimalTrigTable.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface BasicGraphicsPipeline : ABObject {
@public
    BasicArrayList* pointBasicArrayList;
    NoDecimalTrigTable* noDecimalTrigTable;
}
- (instancetype) init:(BasicArrayList*)points;
- (void) initFields;
- (void) setInitMatrix:(BasicArrayList*)points;
- (void) createMatrix;
- (void) translate:(int32_t)x :(int32_t)y;
- (void) rotateToAngle:(Angle*)angle;
- (void) rotate:(int32_t)angle;
- (void) mirror:(int32_t)width;
- (BasicArrayList*) getMatrix;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicGraphicsPipeline_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_PIPELINE_BASICGRAPHICSPIPELINE_H
