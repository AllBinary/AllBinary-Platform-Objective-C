#ifndef ORG_ALLBINARY_GAME_LAYER_WEAPON_TEMPEXPLOSIONWEAPONLAYER_H
#define ORG_ALLBINARY_GAME_LAYER_WEAPON_TEMPEXPLOSIONWEAPONLAYER_H
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
@class TempExplosionWeaponLayer;
@class Animation;
@class WeaponProperties;
@class RemoteInfo;
@class Rectangle;
@class AllBinaryLayerManager;
@class Movement;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class ViewPositionBase;
@class SimpleWeaponLayer;
#if __has_include("org/allbinary/game/combat/weapon/WeaponProperties.h")
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/game/layer/weapon/SimpleWeaponLayer.h"

@interface TempExplosionWeaponLayer : SimpleWeaponLayer {
@public
    TimeDelayHelper* timeDelayHelper;
}
- (instancetype) init:(const char*)name :(Movement*)movement :(Animation*)animationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition :(int32_t)timeDelay;
- (void) initFields;
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TempExplosionWeaponLayer_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_WEAPON_TEMPEXPLOSIONWEAPONLAYER_H
