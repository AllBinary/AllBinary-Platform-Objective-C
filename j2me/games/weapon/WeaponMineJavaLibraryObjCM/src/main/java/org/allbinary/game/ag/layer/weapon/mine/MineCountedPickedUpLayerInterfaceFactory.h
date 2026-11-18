#ifndef ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINECOUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
#define ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINECOUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
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
// package org.allbinary.game.ag.layer.weapon.mine

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MineCountedPickedUpLayerInterfaceFactory;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class WeaponProperties;
@class CountedPickedUpLayerInterfaceFactory;
@class IconLayerFactory;
@class PickedUpLayerInterfaceFactoryInterface;
@class PickedUpLayerTypeFactory;
@class WeaponLayerCircularPool;
@class ScoreableInterface;
@class AllBinaryLayer;
@class SmallIntegerSingletonFactory;
@class ABHashtable;
@class MineLayerCircularStaticPool;
@class MineWeaponResources;
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h")
#include "org/allbinary/game/layer/weapon/WeaponLayerCircularPool.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#include "java/lang/Integer.h"

@interface MineCountedPickedUpLayerInterfaceFactory : CountedPickedUpLayerInterfaceFactory {
@public
    WeaponLayerCircularPool* weaponLayerCircularStaticPool;
    WeaponProperties* weaponProperties;
    SmallIntegerSingletonFactory* smallIntegerSingletonFactory;
}
- (instancetype) init;
- (void) initFields;
+ (void) init_;
+ (PickedUpLayerInterfaceFactoryInterface*) getInstance;
- (int32_t) getTotal;
- (AllBinaryLayer*) getNextInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MineCountedPickedUpLayerInterfaceFactory_staticInit(void);

#if __has_include("org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINECOUNTEDPICKEDUPLAYERINTERFACEFACTORY_H
