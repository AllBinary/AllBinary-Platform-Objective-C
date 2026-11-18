#ifndef ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPARTCIRCULARPOOL_H
#define ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPARTCIRCULARPOOL_H
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
@class BasicWeaponPartCircularPool;
@class WeaponProperties;
@class ScoreableInterface;
@class RelativeRelationship;
@class AllBinaryLayer;
@class BasicWeaponPart;
@class BasicWeaponPartFactoryInterface;
#if __has_include("org/allbinary/game/part/weapon/BasicWeaponPart.h")
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"
#endif

@interface BasicWeaponPartCircularPool : ABObject {
@public
    BasicWeaponPart* basicWeaponPart;
}
- (instancetype) init;
- (void) initFields;
- (void) init_:(BasicWeaponPartFactoryInterface*)basicWeaponPartFactoryInterface;
- (BasicWeaponPart*) getInstance:(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship;
@end

extern BasicWeaponPartCircularPool* BasicWeaponPartCircularPool_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicWeaponPartCircularPool_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PART_WEAPON_BASICWEAPONPARTCIRCULARPOOL_H
