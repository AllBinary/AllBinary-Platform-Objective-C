#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LIFE_LIVESHUDWIDGET_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LIFE_LIVESHUDWIDGET_H
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
// package org.allbinary.game.ag.layer.hud.basic.life

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LivesHudWidget;
@class Graphics;
@class Animation;
@class Life;
@class BasicHud;
@class BasicColorFactory;
@class DisplayChangeEvent;
@class PaintableInterface;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"

@interface LivesHudWidget : BasicHud <PaintableInterface> {
@public
    Life* lifeInterface;
    int32_t* xArray;
    Animation* animationInterface;
}
- (instancetype) init:(Animation*)animationInterface :(Life*)lifeInterface :(int32_t)location :(int32_t)direction;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent;
- (void) setX:(int32_t)x;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (Life*) getLifeInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LivesHudWidget_staticInit(void);

#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_LIFE_LIVESHUDWIDGET_H
