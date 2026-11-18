#ifndef ORG_ALLBINARY_GAME_HEALTH_HEALTHBARTWODANIMATION_H
#define ORG_ALLBINARY_GAME_HEALTH_HEALTHBARTWODANIMATION_H
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
@class HealthBarTwodAnimation;
@class Graphics;
@class AllBinaryLayer;
@class HealthBarAnimation;
#include "org/allbinary/game/health/HealthBarAnimation.h"

@interface HealthBarTwodAnimation : HealthBarAnimation {
@public
}
- (instancetype) init:(AllBinaryLayer*)layerInterface :(int32_t)location;
- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealthBarTwodAnimation_staticInit(void);


#endif // ORG_ALLBINARY_GAME_HEALTH_HEALTHBARTWODANIMATION_H
