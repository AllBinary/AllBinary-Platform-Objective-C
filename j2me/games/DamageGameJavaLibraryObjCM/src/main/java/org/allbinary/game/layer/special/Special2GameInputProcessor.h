#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIAL2GAMEINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIAL2GAMEINPUTPROCESSOR_H
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
@class Special2GameInputProcessor;
@class GameKeyEvent;
@class AllBinaryLayerManager;
@class SpecialGameInputProcessor;
@class CollidableDestroyableDamageableLayer;
#include "org/allbinary/game/layer/special/SpecialGameInputProcessor.h"

@interface Special2GameInputProcessor : SpecialGameInputProcessor {
@public
}
- (instancetype) init:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer;
- (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Special2GameInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_SPECIAL2GAMEINPUTPROCESSOR_H
