#ifndef ORG_ALLBINARY_GAME_COMBAT_WEAPON_SIMPLEWEAPONPROPERTIES_H
#define ORG_ALLBINARY_GAME_COMBAT_WEAPON_SIMPLEWEAPONPROPERTIES_H
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
@class SimpleWeaponProperties;

@interface SimpleWeaponProperties : ABObject {
@public
    int32_t damage;
    int16_t dissipation;
    int32_t range;
}
- (instancetype) init;
- (void) initFields;
- (void) set:(SimpleWeaponProperties*)simpleWeaponProperties;
- (void) setDamage:(int32_t)damage;
- (int32_t) getDamage;
- (void) setDissipation:(int16_t)dissipation;
- (int16_t) getDissipation;
- (int32_t) getRange;
- (void) setRange:(int32_t)range;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SimpleWeaponProperties_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_WEAPON_SIMPLEWEAPONPROPERTIES_H
