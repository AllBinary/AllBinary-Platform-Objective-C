#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREHUDWIDGET_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREHUDWIDGET_H
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
// package org.allbinary.game.ag.layer.hud.basic.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScoreHudWidget;
@class Font;
@class Graphics;
@class NumberStringHud;
@class BasicColor;
@class BasicColorFactory;
#include "org/allbinary/game/ag/layer/hud/basic/NumberStringHud.h"

@interface ScoreHudWidget : NumberStringHud {
@public
}
- (instancetype) init:(int32_t)maxscore :(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor;
+ (ScoreHudWidget*) getInstance:(int32_t)maxscore :(int32_t)location :(int32_t)direction;
- (void) updateMeasurement:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScoreHudWidget_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREHUDWIDGET_H
