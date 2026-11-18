#ifndef ORG_ALLBINARY_GAME_HEALTH_HEALTHBARANIMATION_H
#define ORG_ALLBINARY_GAME_HEALTH_HEALTHBARANIMATION_H
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
@class HealthBarAnimation;
@class Animation;
@class BasicHudFactory;
@class BasicColorFactory;
@class AllBinaryLayer;
#include "org/allbinary/animation/Animation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

@interface HealthBarAnimation : Animation {
@public
    BasicColorFactory* basicColorFactory;
    int32_t x2;
    int32_t thickness;
    int32_t location;
    AllBinaryLayer* allbinaryLayer;
}
- (instancetype) init:(AllBinaryLayer*)layerInterface :(int32_t)location;
- (void) initFields;
- (void) onHealthChange:(int32_t)newX2;
- (int32_t) getY;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealthBarAnimation_staticInit(void);


#endif // ORG_ALLBINARY_GAME_HEALTH_HEALTHBARANIMATION_H
