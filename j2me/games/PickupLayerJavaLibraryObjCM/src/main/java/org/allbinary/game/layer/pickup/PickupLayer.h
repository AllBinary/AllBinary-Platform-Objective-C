#ifndef ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPLAYER_H
#define ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPLAYER_H
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
@class PickupLayer;
@class GL;
@class Graphics;
@class Animation;
@class NullAnimationFactory;
@class CollidableAlwaysPickupNeverCollideBehaviorFactory;
@class DestroyedLayerProcessor;
@class BasicGroupFactory;
@class MultiPlayerGameLayer;
@class RemoteInfo;
@class Rectangle;
@class OpenGLSurfaceChangedInterface;
@class ViewPositionBase;
@class PickedUpLayerInterface;
@class PickupableInterface;
@class CountedPickedUpLayerInterfaceFactory;
@class PickedUpLayerInterfaceFactoryInterface;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#include "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterface.h"
#include "org/allbinary/game/layer/pickup/PickupableInterface.h"
#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif

@interface PickupLayer : MultiPlayerGameLayer <PickedUpLayerInterface, PickupableInterface> {
@public
    PickedUpLayerInterfaceFactoryInterface* pickedUpLayerInterfaceFactoryInterface;
    bool destroyed;
    Animation* animationInterface;
}
- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)total :(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface :(Animation*)animationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition;
- (void) initFields;
- (void) init_:(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface :(Animation*)animationInterface;
- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (PickedUpLayerInterfaceFactoryInterface*) getPickedUpLayerInterfaceFactoryInterface;
- (void) setPickedUp;
- (bool) isDestroyed;
- (void) setDestroyed:(bool)destroyed;
- (void) damage:(int32_t)damage :(int32_t)damageType;
- (int32_t) getDamage:(int32_t)damageType;
- (void) set:(GL*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PickupLayer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_PICKUP_PICKUPLAYER_H
