#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLISIONHELPER_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLISIONHELPER_H
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
@class CollisionHelper;
@class CollidableCompositeLayer;
@class AllBinaryLayer;
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

@interface CollisionHelper : ABObject {
@public
    AllBinaryLayer* sourceLayerInterface;
}
- (instancetype) init:(AllBinaryLayer*)sourceLayerInterface;
- (void) initFields;
- (bool) isCollidable:(CollidableCompositeLayer*)layerInterface;
- (AllBinaryLayer*) getOwnerLayerInterface;
- (void) setOwnerLayerInterface:(AllBinaryLayer*)sourceLayerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollisionHelper_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_COLLISION_COLLISIONHELPER_H
