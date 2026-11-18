#ifndef ORG_ALLBINARY_GAME_HEALTH_HEALTHBAR_H
#define ORG_ALLBINARY_GAME_HEALTH_HEALTHBAR_H
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
// package org.allbinary.game.health

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HealthBar;
@class Graphics;
@class Paintable;
@class AllBinaryLayer;
@class HealthListenerInterface;
@class HealthBarAnimation;
@class HealthInterface;
@class Health;
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/game/health/HealthListenerInterface.h"
#if __has_include("org/allbinary/game/health/HealthBarAnimation.h")
#include "org/allbinary/game/health/HealthBarAnimation.h"
#endif
#if __has_include("org/allbinary/game/health/HealthInterface.h")
#include "org/allbinary/game/health/HealthInterface.h"
#endif

@interface HealthBar : Paintable <HealthListenerInterface> {
@public
    HealthBarAnimation* animationInterface;
    HealthInterface* healthInterface;
    AllBinaryLayer* allbinaryLayer;
}
- (instancetype) init:(AllBinaryLayer*)layerInterface :(Health*)healthInterface :(HealthBarAnimation*)animationInterface :(int32_t)direction;
- (void) initFields;
- (void) onHealthChange;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealthBar_staticInit(void);


#endif // ORG_ALLBINARY_GAME_HEALTH_HEALTHBAR_H
