#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLIDABLEBASEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLIDABLEBASEBEHAVIOR_H
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
@class CollidableBaseBehavior;
@class Graphics;
@class CollidableCompositeLayer;
@class AllBinaryLayer;
@class LogUtil;
@class StringMaker;
@class CommonLabels;
@class CommonStrings;
@class CollidableInterface;
@class LayerCollisionUtil;
@class CollidableInterfaceCompositeInterface;
@class CollisionTypeFactory;
@class CollisionType;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/game/collision/CollidableInterface.h"
#if __has_include("org/allbinary/game/collision/LayerCollisionUtil.h")
#include "org/allbinary/game/collision/LayerCollisionUtil.h"
#endif

@interface CollidableBaseBehavior : ABObject <CollidableInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    LayerCollisionUtil* layerCollisionUtil;
    bool collidable;
}
- (instancetype) init:(bool)collidable;
- (void) initFields;
- (void) update;
- (const char*) getName;
- (void) setCollidable:(bool)collidable;
- (bool) isCollidable:(CollidableCompositeLayer*)ownerLayer;
- (void) collide:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)allbinaryCollidableLayer;
- (bool) isCollision:(CollidableCompositeLayer*)ownerLayer :(CollidableCompositeLayer*)collisionLayer;
- (bool) isCollisionInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (void) collideInterface:(CollidableCompositeLayer*)ownerLayer :(CollidableInterfaceCompositeInterface*)collidableInterfaceCompositeInterface;
- (void) paint:(CollidableCompositeLayer*)ownerLayer :(Graphics*)graphics;
- (CollisionType*) getCollisionTypeWith:(AllBinaryLayer*)layerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableBaseBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_COLLIDABLEBASEBEHAVIOR_H
