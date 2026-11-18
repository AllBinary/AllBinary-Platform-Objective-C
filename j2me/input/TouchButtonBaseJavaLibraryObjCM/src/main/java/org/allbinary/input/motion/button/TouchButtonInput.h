#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONINPUT_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONINPUT_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButtonInput;
@class GameKey;
@class GameKeyEventSourceInterface;
@class Input;
@class InputFactory;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class InputToGameKeyMapping;
@class LogUtil;
@class CommonStrings;
#include "org/allbinary/game/input/GameKeyEventSourceInterface.h"
#include "org/allbinary/game/input/Input.h"
#if __has_include("org/allbinary/game/input/event/GameKeyEvent.h")
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface TouchButtonInput : Input <GameKeyEventSourceInterface> {
@public
    LogUtil* logUtil;
    GameKeyEventFactory* gameKeyEventFactory;
    int32_t TOUCH_BUTTON_SOURCE_ID;
    GameKeyEvent* gameKeyEvent;
}
- (instancetype) init:(int32_t)id_ :(const char*)name;
- (void) initFields;
- (void) update:(InputToGameKeyMapping*)inputToGameKeyMapping;
- (int32_t) getSourceId;
- (GameKeyEvent*) getGameKeyEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonInput_staticInit(void);

#if __has_include("org/allbinary/game/input/event/GameKeyEvent.h")
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONINPUT_H
