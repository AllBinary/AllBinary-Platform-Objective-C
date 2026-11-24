#ifndef ORG_ALLBINARY_GAME_LAYER_WEAPON_COLLIDABLEWEAPONBEHAVIOR_H
#define ORG_ALLBINARY_GAME_LAYER_WEAPON_COLLIDABLEWEAPONBEHAVIOR_H
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
@class CollidableWeaponBehavior;
@class CollidableHelperFactory;
@class CollidableInterfaceCompositeInterface;
@class CollisionHelper;
@class CollisionType;
@class CollisionTypeFactory;
@class DamageableInterface;
@class CollidableCompositeLayer;
@class CollidableDestroyableDamageableBehavior;
@class AllBinaryLayer;
@class NullUtil;
#if __has_include("org/allbinary/game/collision/CollisionHelper.h")
#include "org/allbinary/game/collision/CollisionHelper.h"
#endif
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.h"

@interface CollidableWeaponBehavior : CollidableDestroyableDamageableBehavior {
@public
    bool collided;
    CollisionHelper* collisionHelper;
}
- (instancetype) init:(bool)collidable;
- (void) initFields;
+ (CollidableWeaponBehavior*) getNullInstance;
- (void) initMethod:(AllBinaryLayer*)sourceLayerInterface;
- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer;
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer;
- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (CollisionType*) getCollisionTypeWith:(AllBinaryLayer*)layerInterface;
- (bool) isCollided;
- (void) setCollided:(bool)collided;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableWeaponBehavior_staticInit(void);

#if __has_include("org/allbinary/game/collision/CollisionType.h")
#include "org/allbinary/game/collision/CollisionType.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_WEAPON_COLLIDABLEWEAPONBEHAVIOR_H
