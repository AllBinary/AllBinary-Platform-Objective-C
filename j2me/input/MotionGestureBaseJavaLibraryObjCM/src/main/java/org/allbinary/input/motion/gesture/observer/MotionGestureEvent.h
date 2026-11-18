#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENT_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENT_H
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
// package org.allbinary.input.motion.gesture.observer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MotionGestureEvent;
@class GPoint;
@class PointFactory;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class TsUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class CommonLabels;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif

@interface MotionGestureEvent : AllBinaryEventObject {
@public
    MotionGestureInput* motionGesture;
    int32_t id_;
    GPoint* previousPoint;
    GPoint* currentPoint;
    CommonLabels* commonLabels;
}
- (instancetype) init:(id)source :(int32_t)id_ :(MotionGestureInput*)motionGesture;
- (void) initFields;
- (MotionGestureInput*) getMotionGesture;
- (void) setMotionGesture:(MotionGestureInput*)motionGesture;
- (GPoint*) getPreviousPoint;
- (void) setPreviousPoint:(GPoint*)previousPoint;
- (GPoint*) getCurrentPoint;
- (void) setCurrentPoint:(GPoint*)currentPoint;
- (const char*) toString;
- (int32_t) getId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureEvent_staticInit(void);

#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENT_H
