#ifndef ORG_ALLBINARY_INPUT_MOTION_ALLMOTIONRECOGNIZER_H
#define ORG_ALLBINARY_INPUT_MOTION_ALLMOTIONRECOGNIZER_H
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
// package org.allbinary.input.motion

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllMotionRecognizer;
@class CustomGPoint;
@class GPointCircularPool;
@class TouchButtonRecognizer;
@class MotionGestureRecognizer;
@class LogUtil;
@class MotionRecognizer;
#if __has_include("org/allbinary/graphics/GPointCircularPool.h")
#include "org/allbinary/graphics/GPointCircularPool.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonRecognizer.h")
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/gesture/MotionGestureRecognizer.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/input/motion/MotionRecognizer.h"

@interface AllMotionRecognizer : MotionRecognizer {
@public
    LogUtil* logUtil;
    MotionGestureRecognizer* motionGestureRecognizer;
    bool touchButtonProcessing;
    TouchButtonRecognizer* touchButtonRecognizer;
    int32_t id_;
    int32_t lastX;
    int32_t lastY;
}
- (instancetype) init;
- (void) initFields;
- (void) processStartMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers;
- (void) processEndMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers;
- (void) processDraggedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers;
- (void) processMovedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers;
- (void) processScrolledMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers;
- (MotionGestureRecognizer*) getMotionGestureRecognizer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllMotionRecognizer_staticInit(void);

#if __has_include("org/allbinary/input/motion/gesture/MotionGestureRecognizer.h")
#include "org/allbinary/input/motion/gesture/MotionGestureRecognizer.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_ALLMOTIONRECOGNIZER_H
