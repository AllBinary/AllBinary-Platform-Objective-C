#ifndef ORG_ALLBINARY_GAME_COLLISION_OPTIMIZEDALLBINARYCOLLISIONLAYERPROCESSORFORCOLLIDABLELAYER_H
#define ORG_ALLBINARY_GAME_COLLISION_OPTIMIZEDALLBINARYCOLLISIONLAYERPROCESSORFORCOLLIDABLELAYER_H
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
@class OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer;
@class CollidableCompositeLayer;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class LayerManager;
@class LayerProcessor;
@class OptimizedAllBinaryCollisionLayerManager;
@class CollidableBaseBehavior;
#include "org/allbinary/layer/LayerProcessor.h"

@interface OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer : LayerProcessor {
@public
}
- (instancetype) init;
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)startIndex;
- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_OPTIMIZEDALLBINARYCOLLISIONLAYERPROCESSORFORCOLLIDABLELAYER_H
