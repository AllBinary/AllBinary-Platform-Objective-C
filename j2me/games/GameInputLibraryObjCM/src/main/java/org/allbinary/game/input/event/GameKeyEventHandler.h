#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTHANDLER_H
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
@class GameKeyEventHandler;
@class LogUtil;
@class EventListenerInterface;
@class CommonStrings;
@class PressGameKeyEventHandler;
@class UpGameKeyEventHandler;
@class DownGameKeyEventHandler;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/game/input/event/PressGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/PressGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#endif

@interface GameKeyEventHandler : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    PressGameKeyEventHandler* pressGameKeyEventHandler;
    UpGameKeyEventHandler* upGameKeyEventHandler;
    DownGameKeyEventHandler* downGameKeyEventHandler;
}
- (instancetype) init;
- (void) initFields;
+ (GameKeyEventHandler*) getInstance;
- (void) removeAllListeners;
- (void) addListenerForPlayer:(EventListenerInterface*)eventListenerInterface :(int32_t)playerInputId;
- (void) addListener:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameKeyEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENTHANDLER_H
