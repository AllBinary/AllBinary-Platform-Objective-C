#ifndef ORG_ALLBINARY_GAME_LAYER_PICKUP_ICONLAYER_H
#define ORG_ALLBINARY_GAME_LAYER_PICKUP_ICONLAYER_H
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
// package org.allbinary.game.layer.pickup

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class IconLayer;
@class Graphics;
@class Animation;
@class NullAnimationFactory;
@class PointFactory;
@class Rectangle;
@class AllBinaryLayer;
@class StringUtil;
@class ViewPosition;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/layer/AllBinaryLayer.h"

@interface IconLayer : AllBinaryLayer {
@public
    Animation* animationInterface;
}
- (instancetype) init:(Animation*)animationInterface :(int32_t)width :(int32_t)height;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (Animation*) getAnimationInterface;
@end

extern IconLayer* IconLayer_NULL_ICON_LAYER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IconLayer_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_PICKUP_ICONLAYER_H
