#ifndef ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_RELEASETOUCHINPUTTOGAMEKEYEVENTACTION_H
#define ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_RELEASETOUCHINPUTTOGAMEKEYEVENTACTION_H
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
@class ReleaseTouchInputToGameKeyEventAction;
@class GameKey;
@class GameKeyFactory;
@class PlatformInputMappingFactory;
@class GameKeyEventFactory;
@class GameKeyCompleteMotionGestureInputEvent;
@class TouchMotionGestureFactory;
@class NullUtil;
@class CommonStrings;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"

@interface ReleaseTouchInputToGameKeyEventAction : GameKeyCompleteMotionGestureInputEvent {
@public
    GameKey* NONE;
}
- (instancetype) init;
- (void) initFields;
+ (GameKeyCompleteMotionGestureInputEvent*) getInstance;
- (void) update;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ReleaseTouchInputToGameKeyEventAction_staticInit(void);

#if __has_include("org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h")
#include "org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_TOUCH_ACTION_RELEASETOUCHINPUTTOGAMEKEYEVENTACTION_H
