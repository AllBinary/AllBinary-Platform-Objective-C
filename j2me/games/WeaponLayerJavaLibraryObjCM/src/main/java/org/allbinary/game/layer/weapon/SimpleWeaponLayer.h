#ifndef ORG_ALLBINARY_GAME_LAYER_WEAPON_SIMPLEWEAPONLAYER_H
#define ORG_ALLBINARY_GAME_LAYER_WEAPON_SIMPLEWEAPONLAYER_H
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
// package org.allbinary.game.layer.weapon

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SimpleWeaponLayer;
@class Animation;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class NullIndexedAnimationFactory;
@class ExplosionResources;
@class RemoteInfo;
@class Rectangle;
@class Movement;
@class ViewPositionBase;
@class WeaponLayer;
@class CollidableWeaponBehavior;
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"

@interface SimpleWeaponLayer : WeaponLayer {
@public
}
- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)multiPlayerType :(Movement*)movement :(Animation*)animationInterface :(Animation*)destroyedAnimationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition;
+ (Animation*) createDestroyed;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimpleWeaponLayer_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_WEAPON_SIMPLEWEAPONLAYER_H
