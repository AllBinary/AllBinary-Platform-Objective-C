#ifndef ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYERARRAYLAYERCIRCULARSTATICPOOL_H
#define ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYERARRAYLAYERCIRCULARSTATICPOOL_H
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
@class WeaponLayerArrayLayerCircularStaticPool;
@class CircularIndexUtil;
@class WeaponLayer;
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
#if __has_include("org/allbinary/game/layer/weapon/WeaponLayer.h")
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#endif

@interface WeaponLayerArrayLayerCircularStaticPool : ABObject {
@public
    int32_t MAX;
    CircularIndexUtil* circularIndexUtil;
    WeaponLayer*** WEAPONLAYER_ARRAY;
    WeaponLayer*** TWO_WEAPONLAYER_ARRAY;
    WeaponLayer*** THREE_WEAPONLAYER_ARRAY;
}
- (instancetype) init;
- (void) initFields;
+ (WeaponLayerArrayLayerCircularStaticPool*) getInstance;
- (void) initMethod;
- (WeaponLayer***) getWeaponLayerArrays:(int32_t)size;
- (WeaponLayer**) getInstanceArray:(int32_t)size;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void WeaponLayerArrayLayerCircularStaticPool_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_WEAPON_WEAPONLAYERARRAYLAYERCIRCULARSTATICPOOL_H
