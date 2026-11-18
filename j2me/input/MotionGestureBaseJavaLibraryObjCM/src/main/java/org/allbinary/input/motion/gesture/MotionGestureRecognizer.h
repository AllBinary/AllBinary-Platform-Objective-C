#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURERECOGNIZER_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURERECOGNIZER_H
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
@class MotionGestureRecognizer;
@class GPoint;
@class Line;
@class PointFactory;
@class MotionGestureConfiguration;
@class MotionGestureConfigurationFactory;
@class BasicMotionGesturesHandler;
@class MotionEventCircularPool;
@class MotionGestureEvent;
@class MovedMotionGesturesHandler;
@class ScrolledMotionGesturesHandler;
@class LogUtil;
@class J2SEMath;
@class BasicEventHandler;
@class CommonStrings;
@class TouchMotionGestureFactory;
@class MotionGestureInput;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/Line.h")
#include "org/allbinary/graphics/Line.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h")
#include "org/allbinary/input/motion/gesture/observer/MotionEventCircularPool.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/math/J2SEMath.h")
#include "org/allbinary/logic/math/J2SEMath.h"
#endif
#if __has_include("org/allbinary/logic/util/event/handler/BasicEventHandler.h")
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#endif

@interface MotionGestureRecognizer : ABObject {
@public
    LogUtil* logUtil;
    J2SEMath* j2seMath;
    GPoint* origin;
    GPoint* previous;
    GPoint* intermediate;
    Line* line;
    BasicMotionGesturesHandler* motionGesturesHandler;
    BasicEventHandler* movedMotionGesturesHandler;
    BasicEventHandler* scrolledMotionGesturesHandler;
    MotionEventCircularPool* motionEventCircularPool;
}
- (instancetype) init:(int32_t)id_;
- (void) initFields;
- (bool) processPressedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button;
- (bool) processReleasedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button;
- (void) processDraggedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)buttonMask;
- (bool) processMovedMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button;
- (bool) processScrolledMotionEvent:(GPoint*)current :(int32_t)deviceId :(int32_t)button;
- (BasicMotionGesturesHandler*) getMotionGesturesHandler;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureRecognizer_staticInit(void);

#if __has_include("org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h")
#include "org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURERECOGNIZER_H
