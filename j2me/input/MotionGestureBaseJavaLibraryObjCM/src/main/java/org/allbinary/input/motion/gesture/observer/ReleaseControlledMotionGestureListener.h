#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_RELEASECONTROLLEDMOTIONGESTURELISTENER_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_RELEASECONTROLLEDMOTIONGESTURELISTENER_H
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
@class ReleaseControlledMotionGestureListener;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class ForcedLogUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class MotionGestureEventListener;
@class CompleteMotionGestureListenerInterface;
@class MotionGestureEvent;
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEventListener.h"
#if __has_include("org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h")
#include "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h"
#endif

@interface ReleaseControlledMotionGestureListener : ABObject <MotionGestureEventListener> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    MotionGestureInput* currentMotionGesture;
    bool isMouseGestureOccurring;
    BasicArrayList* motionGestureCollection;
    CompleteMotionGestureListenerInterface* signed_;
}
- (instancetype) init:(CompleteMotionGestureListenerInterface*)signed_;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onUpMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDownMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalDownRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalDownLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalUpRightMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onDiagonalUpLeftMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onPressedMotionGestureEvent:(MotionGestureEvent*)ev;
- (void) onScrolledMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent;
- (void) released:(MotionGestureEvent*)ev;
- (void) onMotionGestureEvent:(MotionGestureEvent*)ev;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ReleaseControlledMotionGestureListener_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_RELEASECONTROLLEDMOTIONGESTURELISTENER_H
