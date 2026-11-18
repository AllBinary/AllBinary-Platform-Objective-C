#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_UPGAMEKEYEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_UPGAMEKEYEVENTHANDLER_H
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
@class UpGameKeyEventHandler;
@class LocalPlayerInputIdFactory;
@class EventListenerInterface;
@class UpGameKeyEventHandlerBase;
#if __has_include("org/allbinary/game/input/LocalPlayerInputIdFactory.h")
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#endif
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"

@interface UpGameKeyEventHandler : UpGameKeyEventHandlerBase {
@public
    LocalPlayerInputIdFactory* playerInputIdFactory;
}
- (instancetype) init;
- (void) initFields;
+ (UpGameKeyEventHandler*) getInstance;
- (UpGameKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId;
- (UpGameKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId;
- (void) removeAllListeners;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void UpGameKeyEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_UPGAMEKEYEVENTHANDLER_H
