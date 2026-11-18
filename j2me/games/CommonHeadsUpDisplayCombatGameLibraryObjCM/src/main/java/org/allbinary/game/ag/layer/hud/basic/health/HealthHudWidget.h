#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_HEALTH_HEALTHHUDWIDGET_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_HEALTH_HEALTHHUDWIDGET_H
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
// package org.allbinary.game.ag.layer.hud.basic.health

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HealthHudWidget;
@class Graphics;
@class Animation;
@class BasicHud;
@class Health;
@class HealthListenerInterface;
@class BasicColorFactory;
@class PaintableInterface;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class NoTimeDelayHelper;
@class TimeDelayHelper;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/game/graphics/hud/BasicHud.h"
#if __has_include("org/allbinary/game/health/Health.h")
#include "org/allbinary/game/health/Health.h"
#endif
#include "org/allbinary/game/health/HealthListenerInterface.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

@interface HealthHudWidget : BasicHud <PaintableInterface, HealthListenerInterface> {
@public
    int32_t healthScale;
    Animation* animationInterface;
    Health* healthInterface;
    int32_t max;
    int32_t* xArray;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
    TimeDelayHelper* timeDelayHelper;
    TimeDelayHelper* slowBeatTimeDelayHelper;
    TimeDelayHelper* mediumBeatTimeDelayHelper;
    TimeDelayHelper* fastBeatTimeDelayHelper;
}
- (instancetype) init:(Animation*)animationInterface :(Health*)healthInterface :(int32_t)location :(int32_t)direction;
- (void) initFields;
- (void) update;
- (void) setX:(int32_t)x;
- (void) onHealthChange;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealthHudWidget_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_HEALTH_HEALTHHUDWIDGET_H
