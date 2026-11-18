#ifndef ORG_ALLBINARY_GAME_AG_LIFE_HEALTHINCLUDINGLIFEBAR_H
#define ORG_ALLBINARY_GAME_AG_LIFE_HEALTHINCLUDINGLIFEBAR_H
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
// package org.allbinary.game.ag.life

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HealthIncludingLifeBar;
@class Graphics;
@class Health;
@class HealthBarAnimation;
@class HealthBarTwodAnimation;
@class HealthInterface;
@class HealthListenerInterface;
@class Paintable;
@class AllBinaryLayer;
@class Life;
#if __has_include("org/allbinary/game/health/HealthBarAnimation.h")
#include "org/allbinary/game/health/HealthBarAnimation.h"
#endif
#if __has_include("org/allbinary/game/health/HealthInterface.h")
#include "org/allbinary/game/health/HealthInterface.h"
#endif
#include "org/allbinary/game/health/HealthListenerInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/game/ag/life/Life.h")
#include "org/allbinary/game/ag/life/Life.h"
#endif

@interface HealthIncludingLifeBar : Paintable <HealthListenerInterface> {
@public
    HealthBarAnimation* animationInterface;
    Life* life;
    HealthInterface* healthInterface;
    AllBinaryLayer* allbinaryLayer;
}
- (instancetype) init:(AllBinaryLayer*)layerInterface :(Life*)life :(Health*)healthInterface :(HealthBarAnimation*)animationInterface :(int32_t)direction;
- (void) initFields;
+ (HealthIncludingLifeBar*) createHealthIncludingLifeBar:(AllBinaryLayer*)layerInterface :(Life*)life :(Health*)healthInterface :(int32_t)location :(int32_t)direction;
- (void) onHealthChange;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealthIncludingLifeBar_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LIFE_HEALTHINCLUDINGLIFEBAR_H
