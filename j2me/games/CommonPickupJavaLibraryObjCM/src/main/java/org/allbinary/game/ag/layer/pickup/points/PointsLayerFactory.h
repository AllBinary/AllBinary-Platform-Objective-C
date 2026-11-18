#ifndef ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERFACTORY_H
#define ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERFACTORY_H
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
@class PointsLayerFactory;
@class AllBinaryLayer;
@class AllBinaryLayerFactoryInterface;
@class PointsLayer;
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"

@interface PointsLayerFactory : ABObject <AllBinaryLayerFactoryInterface> {
@public
    int32_t points;
}
- (instancetype) init:(int32_t)points;
- (void) initFields;
- (AllBinaryLayer*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PointsLayerFactory_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_POINTS_POINTSLAYERFACTORY_H
