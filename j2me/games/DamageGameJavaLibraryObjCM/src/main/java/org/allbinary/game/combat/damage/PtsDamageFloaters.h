#ifndef ORG_ALLBINARY_GAME_COMBAT_DAMAGE_PTSDAMAGEFLOATERS_H
#define ORG_ALLBINARY_GAME_COMBAT_DAMAGE_PTSDAMAGEFLOATERS_H
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
// package org.allbinary.game.combat.damage

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PtsDamageFloaters;
@class Graphics;
@class MyRandomFactory;
@class BasicColor;
@class BasicColorArrayIndexer;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class AllBinaryLayer;
@class CharArrayFactory;
@class PrimitiveLongUtil;
@class CircularIndexUtil;
@class ViewPosition;
@class ViewPositionBase;
@class DamageFloaters;
#if __has_include("org/allbinary/game/rand/MyRandomFactory.h")
#include "org/allbinary/game/rand/MyRandomFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorArrayIndexer.h")
#include "org/allbinary/graphics/color/BasicColorArrayIndexer.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/logic/math/PrimitiveLongUtil.h")
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#endif
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif
// #include "org/allbinary/view/ViewPosition.h"
#include "org/allbinary/game/combat/damage/DamageFloaters.h"

@interface PtsDamageFloaters : DamageFloaters {
@public
    BasicColorSetUtil* basicSetColorUtil;
    AllBinaryLayer* layerInterface;
    int32_t* lastDamage;
    uint16_t** lastDamageString;
    int32_t* lastDamageStringSizeArray;
    CircularIndexUtil* circularIndexUtil;
    PrimitiveLongUtil* primitiveLongUtil;
    MyRandomFactory* myRandomFactory;
}
- (instancetype) init:(AllBinaryLayer*)layerInterface;
- (void) initFields;
- (void) add:(int32_t)damage;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PtsDamageFloaters_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_DAMAGE_PTSDAMAGEFLOATERS_H
