#ifndef ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPBEHAVIOR_H
#define ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPBEHAVIOR_H
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
// package org.allbinary.game.layer.pickup

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PickupBehavior;
@class HealthInterfaceCompositeInterface;
@class CollidableCompositeLayer;
@class CollidableDestroyableDamageableLayer;
@class CountedLayerInterfaceFactoryPart;
@class PartInterface;
@class NullUtil;
@class LogUtil;
@class PreLogUtil;
@class CommonStrings;
@class PickupBehaviorInterface;
@class PickupProcessorInterface;
@class PickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerType;
@class PickedUpLayerTypeFactory;
@class CountedPickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerInterface;
@class CountedPickedUpLayerInterfaceFactory;
#if __has_include("org/allbinary/game/layer/CollidableCompositeLayer.h")
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/game/layer/pickup/PickupBehaviorInterface.h"

@interface PickupBehavior : ABObject <PickupBehaviorInterface> {
@public
    LogUtil* logUtil;
    int32_t countedIndex;
    CollidableCompositeLayer* ownerLayerInterface;
}
- (instancetype) init:(CollidableCompositeLayer*)ownerLayerInterface :(int32_t)countedIndex;
- (void) initFields;
+ (PickupBehavior*) getNullInstance;
- (void) doPickup:(PickupProcessorInterface*)pickupProcessorInterface;
- (void) doPickupLayer:(PickedUpLayerInterface*)pickupLayerInterface;
- (void) add:(CountedPickedUpLayerInterfaceFactoryInterface*)countedPickedUpLayerInterfaceFactoryInterface;
- (void) addAt:(CountedPickedUpLayerInterfaceFactoryInterface*)countedPickedUpLayerInterfaceFactoryInterface :(int32_t)partIndex;
- (CountedLayerInterfaceFactoryPart*) getFirstAvailableCountedLayerInterfaceFactory:(PickedUpLayerType**)pickedUpLayerTypeArray;
- (CountedLayerInterfaceFactoryPart*) getCountedLayerInterfaceFactoryForSlot:(int32_t)slotIndex;
- (int32_t) getCountedIndex;
@end

extern id PickupBehavior_NULL_PICKUP_BEHAVIOR;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PickupBehavior_staticInit(void);

#if __has_include("org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h")
#include "org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPBEHAVIOR_H
