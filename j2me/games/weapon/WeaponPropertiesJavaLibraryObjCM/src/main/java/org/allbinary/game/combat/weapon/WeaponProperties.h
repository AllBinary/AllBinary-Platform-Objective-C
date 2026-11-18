#ifndef ORG_ALLBINARY_GAME_COMBAT_WEAPON_WEAPONPROPERTIES_H
#define ORG_ALLBINARY_GAME_COMBAT_WEAPON_WEAPONPROPERTIES_H
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
// package org.allbinary.game.combat.weapon

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class WeaponProperties;
@class PreLogUtil;
@class BasicDecimal;
@class StringMaker;
@class CommonSeps;
@class CommonStrings;
@class SimpleWeaponProperties;
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#include "org/allbinary/game/combat/weapon/SimpleWeaponProperties.h"

@interface WeaponProperties : SimpleWeaponProperties {
@public
    int64_t reloadTime;
    int64_t targetingTime;
    BasicDecimal* speed;
    int64_t MAX;
    int16_t ZERO;
}
- (instancetype) init:(int64_t)reloadTime :(int64_t)targetingTime :(int64_t)speed :(int32_t)damage :(int16_t)dissipation;
- (void) initFields;
- (void) setReloadTime:(int64_t)reloadTime;
- (int64_t) getReloadTime;
- (void) setTargetingTime:(int64_t)targetingTime;
- (int64_t) getTargetingTime;
- (BasicDecimal*) getSpeed;
- (void) setSpeed:(BasicDecimal*)speed;
- (int32_t) getDamageI:(int32_t)range;
- (const char**) toStringArray;
- (const char*) toString;
@end

extern WeaponProperties* WeaponProperties_NULL_WEAPON_PROPERTIES;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void WeaponProperties_staticInit(void);

#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif

#endif // ORG_ALLBINARY_GAME_COMBAT_WEAPON_WEAPONPROPERTIES_H
