#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATIONHUD_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATIONHUD_H
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
// package org.allbinary.game.ag.layer.hud.basic.notification

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameNotificationHud;
@class Graphics;
@class BasicHud;
@class BasicHudFactory;
@class GameNotificationEvent;
@class GameNotificationListenerInterface;
@class BasicColor;
@class BasicColorFactory;
@class ForcedLogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class GameNotification;
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEvent.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#endif
#include "org/allbinary/game/layer/hud/event/GameNotificationListenerInterface.h"
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface GameNotificationHud : BasicHud <GameNotificationListenerInterface> {
@public
    const char* METHOD_NAME;
    GameNotificationEvent* lastGameNotificationEvent;
}
- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onGameNotificationEvent:(GameNotificationEvent*)gameNotificationEvent;
- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent;
- (void) processTick;
- (void) paint:(Graphics*)graphics;
- (void) clear;
@end

extern GameNotificationHud* GameNotificationHud_NULL_GAME_NOTIFICATION;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameNotificationHud_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATIONHUD_H
