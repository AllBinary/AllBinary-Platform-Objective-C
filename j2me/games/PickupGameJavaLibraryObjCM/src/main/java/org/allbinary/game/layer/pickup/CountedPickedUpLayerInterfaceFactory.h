#ifndef ORG_ALLBINARY_GAME_LAYER_PICKUP_COUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
#define ORG_ALLBINARY_GAME_LAYER_PICKUP_COUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
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
@class CountedPickedUpLayerInterfaceFactory;
@class Animation;
@class NullAnimationFactory;
@class AllBinaryLayer;
@class CommonStrings;
@class ABHashtable;
@class BasicArrayList;
@class PickedUpLayerInterfaceFactory;
@class CountedPickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerTypeFactory;
@class IconLayer;
@class CountedPickedUpLayerInterfaceFactoryPool;
@class PickedUpLayerType;
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.h"

@interface CountedPickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactory <CountedPickedUpLayerInterfaceFactoryInterface> {
@public
    int32_t id_;
}
- (instancetype) init:(PickedUpLayerType*)pickeUpLayerType :(IconLayer*)iconLayer :(Animation*)animationInterface;
- (void) initFields;
- (AllBinaryLayer*) getNextInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z;
- (int32_t) getTotal;
- (int32_t) getId;
@end

extern CountedPickedUpLayerInterfaceFactory* CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CountedPickedUpLayerInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_PICKUP_COUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
