#ifndef ORG_ALLBINARY_GAME_PART_WEAPON_STRAIGHTMULTIPROJECTILEWEAPONPART_H
#define ORG_ALLBINARY_GAME_PART_WEAPON_STRAIGHTMULTIPROJECTILEWEAPONPART_H
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
@class StraightMultiProjectileWeaponPart;
@class Animation;
@class WeaponProperties;
@class WeaponLayer;
@class WeaponLayerCircularPool;
@class NoScoreable;
@class ScoreableInterface;
@class RelativeRelationship;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class NoDecimalTrigTable;
@class BasicWeaponPart;
#if __has_include("org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h")
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#endif
#if __has_include("org/allbinary/math/NoDecimalTrigTable.h")
#include "org/allbinary/math/NoDecimalTrigTable.h"
#endif
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"

@interface StraightMultiProjectileWeaponPart : BasicWeaponPart {
@public
    WeaponLayerCircularPool* weaponLayerCircularStaticPool;
    int32_t total;
    NoDecimalTrigTable* noDecimalTrigTable;
}
- (instancetype) init:(Animation*)animationInterface :(AllBinaryLayer*)sourceLayerInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool :(int32_t)total :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship;
- (void) initFields;
+ (StraightMultiProjectileWeaponPart*) createStraightMultiProjectileWeaponPart:(Animation*)animationInterface :(WeaponLayerCircularPool*)weaponLayerCircularStaticPool;
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StraightMultiProjectileWeaponPart_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PART_WEAPON_STRAIGHTMULTIPROJECTILEWEAPONPART_H
