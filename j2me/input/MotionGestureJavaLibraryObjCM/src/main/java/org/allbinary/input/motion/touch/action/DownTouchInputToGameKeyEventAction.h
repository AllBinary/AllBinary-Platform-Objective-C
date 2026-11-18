#ifndef ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_DOWNTOUCHINPUTTOGAMEKEYEVENTACTION_H
#define ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_DOWNTOUCHINPUTTOGAMEKEYEVENTACTION_H
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
// package org.allbinary.input.motion.touch.action

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DownTouchInputToGameKeyEventAction;
@class PlatformInputMappingFactory;
@class GameKeyCompleteMotionGestureInputEvent;
@class TouchMotionGestureFactory;
@class NullUtil;
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"

@interface DownTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
@public
}
- (instancetype) init;
+ (GameKeyCompleteMotionGestureInputEvent*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DownTouchInputToGameKeyEventAction_staticInit(void);

#if __has_include("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h")
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_DOWNTOUCHINPUTTOGAMEKEYEVENTACTION_H
