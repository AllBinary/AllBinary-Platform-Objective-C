#ifndef ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_HEALTH_HEALPICKEDUPLAYERINTERFACEFACTORY_H
#define ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_HEALTH_HEALPICKEDUPLAYERINTERFACEFACTORY_H
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
// package org.allbinary.game.ag.layer.pickup.health

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HealPickedUpLayerInterfaceFactory;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class CountedPickedUpLayerInterfaceFactory;
@class IconLayerFactory;
@class PickedUpLayerInterfaceFactory;
@class PickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerTypeFactory;
@class PickupProcessorInterface;
@class AllBinaryLayer;
@class HealLayerCircularStaticPool;
@class HealLayerFactory;
@class HealthResources;
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.h"
#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif
#include "org/allbinary/game/layer/pickup/PickupProcessorInterface.h"
#if __has_include("org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.h")
#include "org/allbinary/game/ag/layer/pickup/health/HealLayerCircularStaticPool.h"
#endif

@interface HealPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory <PickupProcessorInterface> {
@public
    HealLayerCircularStaticPool* pool;
}
- (instancetype) init;
- (void) initFields;
+ (void) init_;
- (int32_t) getTotal;
+ (PickedUpLayerInterfaceFactoryInterface*) getInstance;
- (void) process:(AllBinaryLayer*)sourceLayerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HealPickedUpLayerInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_PICKUP_HEALTH_HEALPICKEDUPLAYERINTERFACEFACTORY_H
