#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTPROCESSOR_H
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
// package org.allbinary.game.layer.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SpecialGameInputProcessor;
@class GameInputProcessor;
@class CollidableDestroyableDamageableLayer;
#include "org/allbinary/game/input/GameInputProcessor.h"
#if __has_include("org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h")
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#endif

@interface SpecialGameInputProcessor : GameInputProcessor {
@public
    CollidableDestroyableDamageableLayer* collidableDestroyableDamageableLayer;
}
- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer;
- (void) initFields;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SpecialGameInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIALGAMEINPUTPROCESSOR_H
