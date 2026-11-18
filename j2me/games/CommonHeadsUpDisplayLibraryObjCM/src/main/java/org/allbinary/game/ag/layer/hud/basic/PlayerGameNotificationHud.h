#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_PLAYERGAMENOTIFICATIONHUD_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_PLAYERGAMENOTIFICATIONHUD_H
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
// package org.allbinary.game.ag.layer.hud.basic

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlayerGameNotificationHud;
@class Font;
@class Graphics;
@class GameAdStateFactory;
@class Processor;
@class GameAdState;
@class GameNotification;
@class GameNotificationHud;
@class GameNotificationEventHandler;
@class CustomGPoint;
@class GPoint;
@class BasicColor;
@class DisplayInfoSingleton;
@class UpdateMyFontInterface;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class CircularIndexUtil;
@class SetAndRemoveProcessor;
@class NextUnremoveableProcessor;
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.h")
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.h"
#endif
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"
#if __has_include("org/allbinary/graphics/CustomGPoint.h")
#include "org/allbinary/graphics/CustomGPoint.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#include "java/lang/Integer.h"
#include "java/lang/Boolean.h"

@interface PlayerGameNotificationHud : GameNotificationHud <UpdateMyFontInterface> {
@public
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
    const char* EMPTY_STRING;
    TimeDelayHelper* timeDelayHelper;
    CircularIndexUtil* circularIndexUtil;
    GameNotification* gameNotification;
    GameNotification* permanentGameNotification;
    Processor* setAndRemoveProcessor;
    Processor* nextUnremoveableProcessor;
    Processor* processor;
    const char* PERMANENT_GAME_NOTIFICATION;
    const char* lastString;
    const char* string;
    CustomGPoint* point;
    int32_t width;
}
- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (GPoint*) getPoint:(int32_t)x :(int32_t)y;
- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent;
- (void) processTick;
- (void) setAndRemove;
- (void) setAndRemoveProcess;
- (void) setNextUnremoveable;
- (void) setNextUnremoveableProcess;
- (void) clear;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlayerGameNotificationHud_staticInit(void);

#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_PLAYERGAMENOTIFICATIONHUD_H
