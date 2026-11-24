#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTFACTORY_H
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
// package org.allbinary.game.input.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameKeyEventFactory;
@class GameKeyEventSourceInterface;
@class Input;
@class InputFactory;
@class NullUtil;
@class LogUtil;
@class GameKeyEvent;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEvent.h")
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#endif

@interface GameKeyEventFactory : ABObject {
@public
    LogUtil* logUtil;
    int32_t TOUCH_BUTTON_SOURCE_ID;
    int32_t MOTION_GESTURE_SOURCE_ID;
    int32_t MAX_SOURCES;
    GameKeyEvent*** ARRAY;
}
- (instancetype) init;
- (void) initFields;
+ (GameKeyEventFactory*) getInstance;
- (void) initMethod;
- (GameKeyEvent*) getInstanceForKey:(GameKeyEventSourceInterface*)anyType :(int32_t)key;
- (GameKeyEvent*) getInstanceForInput:(GameKeyEventSourceInterface*)anyType :(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameKeyEventFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTFACTORY_H
