#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNGAMEKEYEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNGAMEKEYEVENTHANDLER_H
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
@class DownGameKeyEventHandler;
@class LocalPlayerInputIdFactory;
@class EventListenerInterface;
@class DownGameKeyEventHandlerBase;
#if __has_include("org/allbinary/game/input/LocalPlayerInputIdFactory.h")
#include "org/allbinary/game/input/LocalPlayerInputIdFactory.h"
#endif
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"

@interface DownGameKeyEventHandler : DownGameKeyEventHandlerBase {
@public
    LocalPlayerInputIdFactory* playerInputIdFactory;
}
- (instancetype) init;
- (void) initFields;
+ (DownGameKeyEventHandler*) getInstance;
- (DownGameKeyEventHandlerBase*) getInstanceForDevice:(int32_t)deviceId;
- (DownGameKeyEventHandlerBase*) getInstanceForPlayer:(int32_t)playerInputId;
- (void) removeAllListeners;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DownGameKeyEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNGAMEKEYEVENTHANDLER_H
