#ifndef ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYER_H
#define ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYER_H
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
// package org.allbinary.game.ag.layer.weapon.mine

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MineLayer;
@class DropWeaponSound;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class SimpleWeaponLayer;
@class RemoteInfo;
@class PointFactory;
@class Rectangle;
@class AllBinaryLayer;
@class SecondaryPlayerQueueFactory;
@class NoMovementFactory;
@class ViewPositionBase;
@class ViewPositionEventHandler;
@class MineWeaponResources;
#include "org/allbinary/game/layer/weapon/SimpleWeaponLayer.h"
#if __has_include("org/allbinary/view/event/ViewPositionEventHandler.h")
#include "org/allbinary/view/event/ViewPositionEventHandler.h"
#endif

@interface MineLayer : SimpleWeaponLayer {
@public
    ViewPositionEventHandler* viewPositionEventHandler;
}
- (instancetype) init:(ViewPositionBase*)viewPosition;
- (void) initFields;
- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) damage:(int32_t)damage :(int32_t)damageType;
- (int32_t) getDamage:(int32_t)damageType;
- (void) setDestroyed:(bool)destroyed;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MineLayer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINELAYER_H
