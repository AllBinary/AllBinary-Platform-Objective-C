#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLELAYER_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLELAYER_H
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
// package org.allbinary.game.layer.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CollidableDestroyableDamageableLayer;
@class Graphics;
@class CollidableNeverCollideBehaviorFactory;
@class DamageableInterface;
@class DestroyableInterface;
@class DestroyedEvent;
@class BasicGroupFactory;
@class Group;
@class GameKeyEvent;
@class AllBinaryGameLayerManager;
@class CollidableCompositeLayer;
@class PickedUpLayerInterfaceFactoryInterface;
@class PickupBehavior;
@class PickupCompositeInterface;
@class PartInterface;
@class PartInterfaceUtil;
@class Rectangle;
@class RectangleFactory;
@class AllBinaryLayerManager;
@class NullUtil;
@class StringMaker;
@class StringUtil;
@class PositionStrings;
@class CommonSeps;
@class ViewPositionBase;
@class SpecialGameInputInterface;
#include "org/allbinary/game/combat/damage/DamageableInterface.h"
#include "org/allbinary/game/combat/destroy/DestroyableInterface.h"
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#if __has_include("org/allbinary/game/layer/pickup/PickupBehavior.h")
#include "org/allbinary/game/layer/pickup/PickupBehavior.h"
#endif
#include "org/allbinary/game/layer/pickup/PickupCompositeInterface.h"
#if __has_include("org/allbinary/game/part/PartInterface.h")
#include "org/allbinary/game/part/PartInterface.h"
#endif
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"

@interface CollidableDestroyableDamageableLayer : CollidableCompositeLayer <DestroyableInterface, DamageableInterface, PickupCompositeInterface, SpecialGameInputInterface> {
@public
    Group** groupInterface;
    bool readyForExplosion;
    int32_t initWidth;
    int32_t initHeight;
    int32_t initX;
    int32_t initY;
    int32_t initZ;
    PartInterface** partInterfaceArrayP;
    PickupBehavior* pickupBehavior;
    AllBinaryGameLayerManager* allBinaryGameLayerManagerP;
    bool isDraggable;
    bool isDragged;
    bool isDropped;
}
- (instancetype) init:(Group**)groupInterface :(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition;
- (void) initFields;
+ (CollidableDestroyableDamageableLayer*) getNullInstance;
- (void) initPosition;
- (void) initPositionXYZ:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) paint:(Graphics*)graphics;
- (void) damage:(int32_t)damage :(int32_t)damageType;
- (int32_t) getDamage:(int32_t)damageType;
- (bool) isDestroyed;
- (Group**) getGroupInterface;
- (void) setGroupInterface:(Group**)teamInterface;
- (void) setAllBinaryGameLayerManager:(AllBinaryGameLayerManager*)allBinaryGameLayerManager;
- (bool) isReadyForExplosion;
- (void) setReadyForExplosion:(bool)isReadyForExplosion;
- (int32_t) getInitWidth;
- (int32_t) getInitHeight;
- (int32_t) getInitX;
- (int32_t) getInitY;
- (void) up;
- (void) down;
- (void) right;
- (void) left;
- (void) strafeLeft;
- (void) strafeRight;
- (void) fire:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special1:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special2:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special3:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special4:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) special5:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent;
- (void) upAnalog:(int32_t)yAnalogValue;
- (void) downAnalog:(int32_t)yAnalogValue;
- (void) rightAnalog:(int32_t)xAnalogValue;
- (void) leftAnalog:(int32_t)xAnalogValue;
- (void) rightTrigger:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)xAnalogValue;
- (void) leftTrigger:(AllBinaryLayerManager*)layerManager :(GameKeyEvent*)gameKeyEvent :(int32_t)xAnalogValue;
- (void) onDestroyed:(DestroyedEvent*)destroyedEvent;
- (PickupBehavior*) getPickupBehavior;
- (void) setPickupBehavior:(PickupBehavior*)pickupBehavior;
- (void) addPart:(PickedUpLayerInterfaceFactoryInterface*)pickedUpLayerInterfaceFactoryInterface;
- (void) setPartInterfaceArray:(PartInterface**)partInterfaceArray;
- (PartInterface**) getPartInterfaceArray;
- (void) toStringAppend:(StringMaker*)stringBuffer;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableDestroyableDamageableLayer_staticInit(void);

#if __has_include("org/allbinary/game/layer/pickup/PickupBehavior.h")
#include "org/allbinary/game/layer/pickup/PickupBehavior.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_COLLIDABLEDESTROYABLEDAMAGEABLELAYER_H
