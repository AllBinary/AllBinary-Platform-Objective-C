#ifndef ORG_ALLBINARY_ANIMATION_VECTORROTATIONGENERATOR_H
#define ORG_ALLBINARY_ANIMATION_VECTORROTATIONGENERATOR_H
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
// package org.allbinary.animation

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class VectorRotationGenerator;
@class PointFactory;
@class BasicGraphicsPipeline;
@class NullUtil;
@class LogUtil;
@class Angle;
@class AngleFactory;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListS;
@class VectorInfo;
@class VectorAnimationUtil;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/math/AngleFactory.h")
#include "org/allbinary/math/AngleFactory.h"
#endif
#if __has_include("org/allbinary/animation/VectorAnimationUtil.h")
#include "org/allbinary/animation/VectorAnimationUtil.h"
#endif

@interface VectorRotationGenerator : ABObject {
@public
    LogUtil* logUtil;
    VectorAnimationUtil* vectorAnimationUtil;
    AngleFactory* angleFactory;
}
- (instancetype) init;
- (void) initFields;
+ (VectorRotationGenerator*) getInstance;
- (int32_t***) getInstance:(VectorInfo*)vectorRotationInfo;
- (int32_t***) getInstanceFrames:(int32_t)width :(int32_t)height :(int32_t**)points :(int32_t)frames;
- (BasicArrayList*) getListAtAngle:(int32_t)width :(int32_t)height :(BasicArrayList*)pointBasicArrayList :(Angle*)angle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorRotationGenerator_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTORROTATIONGENERATOR_H
