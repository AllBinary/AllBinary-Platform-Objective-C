#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATION_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATION_H
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
@class GameNotification;
@class GameNotificationEvent;
@class BasicColor;
@class BasicColorFactory;
@class NullUtil;
@class BooleanFactory;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/game/layer/hud/event/GameNotificationEvent.h")
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface GameNotification : ABObject {
@public
    BasicArrayList* stringList;
    BasicArrayList* timeList;
    BasicArrayList* colorList;
}
- (instancetype) init;
- (void) initFields;
- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor;
- (void) clear;
- (int32_t) getSize;
@end

extern GameNotificationEvent* GameNotification_NULL_GAME_NOTIFICATION_EVENT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameNotification_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_GAMENOTIFICATION_H
