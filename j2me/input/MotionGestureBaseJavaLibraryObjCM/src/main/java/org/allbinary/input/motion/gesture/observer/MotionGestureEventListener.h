#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENTLISTENER_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENTLISTENER_H
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
@class MotionGestureEventListener;
@class BaseMotionGestureEventListener;
@class MotionGestureEvent;
#include "org/allbinary/input/motion/gesture/observer/BaseMotionGestureEventListener.h"

@protocol MotionGestureEventListener <BaseMotionGestureEventListener>
- (void) onPressedMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onUpMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDownMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalDownRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalDownLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalUpRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalUpLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) released:(MotionGestureEvent*)ev;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureEventListener_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTUREEVENTLISTENER_H
