#ifndef ORG_ALLBINARY_ANIMATION_VECTORMIRRORGENERATOR_H
#define ORG_ALLBINARY_ANIMATION_VECTORMIRRORGENERATOR_H
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
@class VectorMirrorGenerator;
@class PointFactory;
@class BasicGraphicsPipeline;
@class NullUtil;
@class LogUtil;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListS;
@class VectorAnimationUtil;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/animation/VectorAnimationUtil.h")
#include "org/allbinary/animation/VectorAnimationUtil.h"
#endif

@interface VectorMirrorGenerator : ABObject {
@public
    LogUtil* logUtil;
    VectorAnimationUtil* vectorAnimationUtil;
}
- (instancetype) init;
- (void) initFields;
+ (VectorMirrorGenerator*) getInstance;
- (int32_t***) getInstance:(int32_t***)points :(int32_t)width;
- (BasicArrayList*) getInstance_2:(BasicArrayList*)pointBasicArrayList :(int32_t)width;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorMirrorGenerator_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_ANIMATION_VECTORMIRRORGENERATOR_H
