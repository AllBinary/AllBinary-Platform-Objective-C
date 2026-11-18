#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_TIMEHUDWIDGET_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_TIMEHUDWIDGET_H
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
// package org.allbinary.game.ag.layer.hud.basic.time

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TimeHudWidget;
@class Font;
@class Graphics;
@class BasicHud;
@class BasicColor;
@class MyFontProcessor;
@class PrimitiveLongSingleton;
@class HudTimer;
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#if __has_include("org/allbinary/game/ag/layer/hud/basic/time/HudTimer.h")
#include "org/allbinary/game/ag/layer/hud/basic/time/HudTimer.h"
#endif

@interface TimeHudWidget : BasicHud {
@public
    const char* TIME_STRING;
    uint16_t* TIME_CHAR_ARRAY;
    int32_t offset;
    uint16_t* string;
    int32_t totalDigits;
    HudTimer* timer;
}
- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor :(HudTimer*)timer;
- (void) initFields;
+ (TimeHudWidget*) getInstance:(int32_t)location :(int32_t)direction :(BasicColor*)basicColor :(HudTimer*)timer;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) update;
- (void) set;
- (HudTimer*) getTimer;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TimeHudWidget_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_TIME_TIMEHUDWIDGET_H
