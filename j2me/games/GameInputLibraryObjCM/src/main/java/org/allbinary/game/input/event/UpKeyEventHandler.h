#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLER_H
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
@class UpKeyEventHandler;
@class LocalPlayerInputIdFactory;
@class EventListenerInterface;
@class UpKeyEventHandlerBase;
#if __has_include("org/allbinary/game/input/LocalPlayerInputIdFactory.h")
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#endif
#include "org/allbinary/game/input/event/UpKeyEventHandlerBase.h"

@interface UpKeyEventHandler : UpKeyEventHandlerBase {
@public
    LocalPlayerInputIdFactory* playerInputIdFactory;
}
- (instancetype) init;
- (void) initFields;
+ (UpKeyEventHandler*) getInstance;
- (UpKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId;
- (UpKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId;
- (void) removeAllListeners;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void UpKeyEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLER_H
