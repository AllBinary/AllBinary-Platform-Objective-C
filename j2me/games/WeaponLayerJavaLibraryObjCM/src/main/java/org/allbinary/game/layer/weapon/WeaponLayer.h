#ifndef ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYER_H
#define ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYER_H
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
// package org.allbinary.game.layer.weapon

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class WeaponLayer;
@class GL;
@class Graphics;
@class Animation;
@class IndexedAnimation;
@class NullAnimationFactory;
@class CollidableBaseBehavior;
@class DestroyedLayerProcessor;
@class WeaponProperties;
@class GameConfigurationUtil;
@class BasicGroupFactory;
@class MultiPlayerGameLayer;
@class RemoteInfo;
@class NoScoreable;
@class ScoreableInterface;
@class TickableInterface;
@class Rectangle;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class Movement;
@class ViewPosition;
@class ViewPositionBase;
@class CollidableWeaponBehavior;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#include "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.h"
#if __has_include("org/allbinary/game/score/ScoreableInterface.h")
#include "org/allbinary/game/score/ScoreableInterface.h"
#endif
#include "org/allbinary/game/tick/TickableInterface.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/physics/movement/Movement.h")
#include "org/allbinary/physics/movement/Movement.h"
#endif
// #include "org/allbinary/view/ViewPosition.h"
#if __has_include("org/allbinary/game/layer/weapon/CollidableWeaponBehavior.h")
#include "org/allbinary/game/layer/weapon/CollidableWeaponBehavior.h"
#endif

@interface WeaponLayer : MultiPlayerGameLayer <TickableInterface> {
@public
    Animation* animationInterface;
    Animation* initAnimationInterface;
    Animation* destroyedAnimationInterface;
    AllBinaryLayer* sourceLayerInterface;
    int32_t totalDamage;
    int32_t initDamage;
    bool destroyed;
    ScoreableInterface* scoreableInterface;
    Movement* movement;
    WeaponProperties* weaponProperties;
    int32_t multiPlayerType;
    CollidableWeaponBehavior* collidableWeaponBehavior;
}
- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)multiPlayerType :(Movement*)movement :(Animation*)animationInterface :(Animation*)destroyedAnimationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition;
- (void) initFields;
- (void) setCollidableInferface:(CollidableBaseBehavior*)collidableInferface;
- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) init_:(AllBinaryLayer*)sourceLayerInterface :(int32_t)angle :(int32_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreable;
- (void) setGroupInterfaces;
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager;
- (bool) isDestroyed;
- (void) damage:(int32_t)damage :(int32_t)damageType;
- (void) givePoints:(int32_t)total;
- (bool) isExhausted;
- (int32_t) getDamage:(int32_t)damageType;
- (void) setDestroyed:(bool)destroyed;
- (int32_t) getInitDamage;
- (void) setAnimationInterface:(Animation*)animationInterface;
- (Animation*) getAnimationInterface;
- (Animation*) getInitAnimationInterfaceP;
- (void) setInitAnimationInterfaceP:(Animation*)initAnimationInterface;
- (Animation*) getDestroyedAnimationInterface;
- (AllBinaryLayer*) getOwnerLayerInterface;
- (void) setOwnerLayerInterface:(AllBinaryLayer*)sourceLayerInterface;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (Movement*) getMovement;
- (void) setMovement:(Movement*)movement;
- (int32_t) getType;
+ (int32_t) getStaticType;
- (int32_t) getMultiPlayerType;
- (void) setWeaponPropertiesP:(WeaponProperties*)weaponProperties;
- (WeaponProperties*) getWeaponPropertiesP;
- (bool) implmentsTickableInterface;
- (void) set:(GL*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void WeaponLayer_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/physics/movement/Movement.h")
#include "org/allbinary/physics/movement/Movement.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYER_H
