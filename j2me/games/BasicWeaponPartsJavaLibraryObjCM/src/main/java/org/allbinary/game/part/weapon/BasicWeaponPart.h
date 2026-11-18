#ifndef ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPART_H
#define ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPART_H
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
// package org.allbinary.game.part.weapon

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicWeaponPart;
@class Graphics;
@class Animation;
@class NullAnimationFactory;
@class WeaponProperties;
@class PartInterface;
@class NoScoreable;
@class ScoreableInterface;
@class RelativeRelationship;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class CommonStrings;
@class ViewPositionBase;
@class SalvoInterface;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#include "org/allbinary/game/part/PartInterface.h"
#if __has_include("org/allbinary/game/score/ScoreableInterface.h")
#include "org/allbinary/game/score/ScoreableInterface.h"
#endif
#if __has_include("org/allbinary/graphics/RelativeRelationship.h")
#include "org/allbinary/graphics/RelativeRelationship.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/game/part/weapon/SalvoInterface.h"

@interface BasicWeaponPart : ABObject <PartInterface, SalvoInterface> {
@public
    Animation* animationInterface;
    AllBinaryLayer* ownerLayerInterface;
    WeaponProperties* weaponProperties;
    ScoreableInterface* scoreableInterface;
    RelativeRelationship* relativeRelationship;
}
- (instancetype) init:(Animation*)animationInterface :(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship;
- (void) initFields;
+ (BasicWeaponPart*) createBasicWeaponPart:(Animation*)animationInterface;
- (void) init_:(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship;
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle;
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface;
- (AllBinaryLayer*) getOwnerLayerInterface;
- (void) setOwnerLayerInterface:(AllBinaryLayer*)ownerLayerInterface;
- (Animation*) getAnimationInterface;
- (void) setAnimationInterface:(Animation*)animationInterface;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (WeaponProperties*) getWeaponProperties;
- (void) setWeaponProperties:(WeaponProperties*)weaponProperties;
@end

extern BasicWeaponPart* BasicWeaponPart_NULL_BASIC_WEAPON_PART;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicWeaponPart_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPART_H
