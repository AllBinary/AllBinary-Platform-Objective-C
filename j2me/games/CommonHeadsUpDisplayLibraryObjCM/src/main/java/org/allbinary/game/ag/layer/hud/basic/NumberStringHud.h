#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUD_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUD_H
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
@class NumberStringHud;
@class Font;
@class Graphics;
@class BasicHud;
@class BasicHudFactory;
@class BasicColor;
@class MyFontProcessor;
@class PaintableInterface;
@class PrimitiveLongSingleton;
@class PrimitiveLongUtil;
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#if __has_include("org/allbinary/logic/math/PrimitiveLongUtil.h")
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#endif

@interface NumberStringHud : BasicHud <PaintableInterface> {
@public
    PrimitiveLongUtil* primitiveLongUtil;
    const char* prependString;
    uint16_t* PREPEND_STRING;
    int32_t value;
    int32_t max;
    int32_t offset;
    uint16_t* valueString;
    int32_t valueTotalDigits;
}
- (instancetype) init:(const char*)prependString :(int32_t)max :(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (int32_t) get;
- (void) add:(int32_t)value;
- (void) set:(int32_t)value;
- (void) reduce:(int32_t)value;
- (void) paint:(Graphics*)graphics;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberStringHud_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUD_H
