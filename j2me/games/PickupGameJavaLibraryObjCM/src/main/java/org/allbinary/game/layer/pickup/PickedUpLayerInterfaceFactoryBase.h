#ifndef ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKEDUPLAYERINTERFACEFACTORYBASE_H
#define ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKEDUPLAYERINTERFACEFACTORYBASE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class PickedUpLayerInterfaceFactoryBase;
@class Animation;
@class AllBinaryLayer;
@class PickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerType;
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"

@interface PickedUpLayerInterfaceFactoryBase : ABObject <PickedUpLayerInterfaceFactoryInterface> {
@public
}
- (instancetype) init;
- (AllBinaryLayer*) getIconLayer;
- (Animation*) getAnimationInterface;
- (PickedUpLayerType*) getPickedUpLayerType;
@end

extern PickedUpLayerInterfaceFactoryBase* PickedUpLayerInterfaceFactoryBase_NULL_PICKED_UP_LAYER_FACTORY_BASE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PickedUpLayerInterfaceFactoryBase_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKEDUPLAYERINTERFACEFACTORYBASE_H
