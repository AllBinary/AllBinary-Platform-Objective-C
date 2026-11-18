#ifndef ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENT_H
#define ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENT_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CompleteMotionGestureInputEvent;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class LogUtil;
@class StringUtil;
@class AllBinaryEventObject;
@class CommonStrings;
@class CompleteMotionGestureInputInterface;
#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputInterface.h"

@interface CompleteMotionGestureInputEvent : AllBinaryEventObject <CompleteMotionGestureInputInterface> {
@public
    LogUtil* logUtil;
    const char* name;
    MotionGestureInput* motionGestureInput;
}
- (instancetype) init:(const char*)name :(MotionGestureInput*)motionGestureInput;
- (void) initFields;
- (void) setName:(const char*)name;
- (const char*) getName;
- (void) setMotionGestureInput:(MotionGestureInput*)motionGestureInput;
- (MotionGestureInput*) getMotionGestureInput;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompleteMotionGestureInputEvent_staticInit(void);

#if __has_include("org/allbinary/input/motion/gesture/MotionGestureInput.h")
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENT_H
