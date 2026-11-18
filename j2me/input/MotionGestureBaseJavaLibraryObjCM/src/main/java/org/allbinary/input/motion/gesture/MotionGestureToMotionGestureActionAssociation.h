#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURETOMOTIONGESTUREACTIONASSOCIATION_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURETOMOTIONGESTUREACTIONASSOCIATION_H
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
@class MotionGestureToMotionGestureActionAssociation;
@class CompleteMotionGestureInputEvent;
@class BasicArrayList;
#if __has_include("org/allbinary/game/input/CompleteMotionGestureInputEvent.h")
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface MotionGestureToMotionGestureActionAssociation : ABObject {
@public
    BasicArrayList* list;
    CompleteMotionGestureInputEvent* motionGestureAction;
}
- (instancetype) init:(BasicArrayList*)list :(CompleteMotionGestureInputEvent*)commandAction;
- (void) initFields;
- (BasicArrayList*) getMotionGesture;
- (void) setMotionGestures:(BasicArrayList*)list;
- (CompleteMotionGestureInputEvent*) getCommandAction;
- (void) setMotionGestureAction:(CompleteMotionGestureInputEvent*)commandAction;
- (bool) isMotionGestureArrayEquals:(BasicArrayList*)aList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureToMotionGestureActionAssociation_staticInit(void);

#if __has_include("org/allbinary/game/input/CompleteMotionGestureInputEvent.h")
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_MOTIONGESTURETOMOTIONGESTUREACTIONASSOCIATION_H
