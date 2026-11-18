#ifndef ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENTHANDLER_H
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
// package org.allbinary.game.layer.hud.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameNotificationEventHandler;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class NullEventListener;
@class BasicEventHandler;
@class BasicArrayList;
@class GameNotificationListenerInterface;
@class GameNotificationEvent;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"

@interface GameNotificationEventHandler : BasicEventHandler {
@public
    bool enabled;
}
- (instancetype) init;
- (void) initFields;
- (void) removeAllListeners;
+ (GameNotificationEventHandler*) getInstance;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameNotificationEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_HUD_EVENT_GAMENOTIFICATIONEVENTHANDLER_H
