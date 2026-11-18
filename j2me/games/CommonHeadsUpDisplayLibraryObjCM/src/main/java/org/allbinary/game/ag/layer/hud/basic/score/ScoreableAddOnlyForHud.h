#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREABLEADDONLYFORHUD_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREABLEADDONLYFORHUD_H
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
@class ScoreableAddOnlyForHud;
@class Scoreable;
@class ScoreHudWidget;
#include "org/allbinary/game/score/Scoreable.h"
#if __has_include("org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.h")
#include "org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.h"
#endif

@interface ScoreableAddOnlyForHud : Scoreable {
@public
    ScoreHudWidget* scoreHudWidget;
}
- (instancetype) init:(ScoreHudWidget*)scoreVectorGraphic;
- (void) initFields;
- (void) removePoints:(int32_t)points;
- (void) addPoints:(int32_t)points;
- (ScoreHudWidget*) getScoreHudWidget;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScoreableAddOnlyForHud_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_SCORE_SCOREABLEADDONLYFORHUD_H
