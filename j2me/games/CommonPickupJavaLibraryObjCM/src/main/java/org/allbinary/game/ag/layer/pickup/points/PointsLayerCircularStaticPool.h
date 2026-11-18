#ifndef ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERCIRCULARSTATICPOOL_H
#define ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERCIRCULARSTATICPOOL_H
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
// package org.allbinary.game.ag.layer.pickup.points

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PointsLayerCircularStaticPool;
@class ScoreableInterface;
@class AllBinaryLayer;
@class AllBinaryLayerCircularPool;
@class AllBinaryLayerFactoryInterface;
@class PointsLayer;
#include "org/allbinary/layer/AllBinaryLayerCircularPool.h"

@interface PointsLayerCircularStaticPool : AllBinaryLayerCircularPool {
@public
}
- (instancetype) init:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total;
- (void) visit:(AllBinaryLayer*)sourceLayerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PointsLayerCircularStaticPool_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERCIRCULARSTATICPOOL_H
