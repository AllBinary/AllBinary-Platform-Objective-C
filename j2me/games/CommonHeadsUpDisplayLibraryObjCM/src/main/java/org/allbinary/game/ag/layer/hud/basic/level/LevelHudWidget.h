#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LEVEL_LEVELHUDWIDGET_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LEVEL_LEVELHUDWIDGET_H
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
// package org.allbinary.game.ag.layer.hud.basic.level

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LevelHudWidget;
@class Font;
@class Graphics;
@class BasicHud;
@class BasicColorFactory;
@class PaintableInterface;
@class NullUtil;
@class PrimitiveLongUtil;
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#if __has_include("org/allbinary/logic/math/PrimitiveLongUtil.h")
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#endif

@interface LevelHudWidget : BasicHud <PaintableInterface> {
@public
    int32_t level;
    int32_t maxlevel;
    uint16_t* levelString;
    uint16_t* levelNumberCharArray;
    int32_t levelNumberTotalDigits;
    int32_t offset;
    PrimitiveLongUtil* primitiveLongUtil;
}
- (instancetype) init:(int32_t)maxlevel :(int32_t)location :(int32_t)direction;
- (void) initFields;
+ (LevelHudWidget*) createHud:(int32_t)maxlevel :(int32_t)location :(int32_t)direction;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) update;
- (void) setLevel:(int32_t)level;
- (void) nextLevel;
- (void) previousLevel;
- (bool) isComplete;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LevelHudWidget_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LEVEL_LEVELHUDWIDGET_H
