#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIOR_H
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
// package org.allbinary.game.collision

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CollidableNeverCollideBehavior;
@class CollidableCompositeLayer;
@class CollidableBaseBehavior;
@class CollidableInterfaceCompositeInterface;
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"

@interface CollidableNeverCollideBehavior : CollidableBaseBehavior {
@public
}
- (instancetype) init:(bool)isCollidable;
- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer;
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer;
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableNeverCollideBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIOR_H
