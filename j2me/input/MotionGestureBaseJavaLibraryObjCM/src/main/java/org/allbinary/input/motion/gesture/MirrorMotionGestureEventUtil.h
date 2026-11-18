#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_MIRRORMOTIONGESTUREEVENTUTIL_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_MIRRORMOTIONGESTUREEVENTUTIL_H
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
// package org.allbinary.input.motion.gesture

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MirrorMotionGestureEventUtil;
@class GPoint;
@class PointFactory;
@class MotionEventCircularPool;
@class MotionGestureEvent;
#if __has_include("org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h")
#include "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h"
#endif
#include "java/lang/Integer.h"

@interface MirrorMotionGestureEventUtil : ABObject {
@public
    MotionEventCircularPool* motionEventCircularPool;
}
- (instancetype) init;
- (void) initFields;
- (MotionGestureEvent*) mirrorVerticle:(MotionGestureEvent*)motionGestureEvent :(int32_t)halfWidth;
- (int32_t) getNewX:(int32_t)x :(int32_t)halfWidth;
+ (MirrorMotionGestureEventUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MirrorMotionGestureEventUtil_staticInit(void);

#if __has_include("org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h")
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_MIRRORMOTIONGESTUREEVENTUTIL_H
