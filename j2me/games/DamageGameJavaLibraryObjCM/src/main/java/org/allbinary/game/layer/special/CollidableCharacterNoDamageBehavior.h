#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLECHARACTERNODAMAGEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLECHARACTERNODAMAGEBEHAVIOR_H
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
@class CollidableCharacterNoDamageBehavior;
@class CollidableInterfaceCompositeInterface;
@class CollisionType;
@class CollisionTypeFactory;
@class CollidableCompositeLayer;
@class PickedUpLayerInterface;
@class ForcedLogUtil;
@class CollidableDestroyableDamageableBehavior;
@class CollidableDestroyableDamageableLayer;
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableBehavior.h"

@interface CollidableCharacterNoDamageBehavior : CollidableDestroyableDamageableBehavior {
@public
}
- (instancetype) init:(bool)collidable;
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collidableInterfaceCompositeInterface;
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableCharacterNoDamageBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLECHARACTERNODAMAGEBEHAVIOR_H
