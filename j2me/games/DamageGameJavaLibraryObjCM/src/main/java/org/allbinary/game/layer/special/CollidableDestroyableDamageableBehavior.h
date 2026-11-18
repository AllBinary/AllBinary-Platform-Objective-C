#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLEBEHAVIOR_H
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
// package org.allbinary.game.layer.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CollidableDestroyableDamageableBehavior;
@class CollidableBaseBehavior;
@class CollidableInterfaceCompositeInterface;
@class DamageUtil;
@class CollidableCompositeLayer;
@class ForcedLogUtil;
@class CollidableDestroyableDamageableLayer;
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#if __has_include("org/allbinary/game/combat/damage/DamageUtil.h")
#include "org/allbinary/game/combat/damage/DamageUtil.h"
#endif

@interface CollidableDestroyableDamageableBehavior : CollidableBaseBehavior {
@public
    DamageUtil* damageUtil;
}
- (instancetype) init:(bool)collidable;
- (void) initFields;
- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer;
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collidableInterfaceCompositeInterface;
- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableDestroyableDamageableBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLEBEHAVIOR_H
