#ifndef ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLESIMPLEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLESIMPLEBEHAVIOR_H
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
// package org.allbinary.game.combat.destroy

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DestroyableSimpleBehavior;
@class CollidableCompositeLayer;
@class DestroyableBaseBehavior;
@class DestroyedLayerProcessor;
#if __has_include("org/allbinary/game/layer/CollidableCompositeLayer.h")
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#endif
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"

@interface DestroyableSimpleBehavior : DestroyableBaseBehavior {
@public
    CollidableCompositeLayer* ownerLayer;
    bool destroyed;
}
- (instancetype) init:(CollidableCompositeLayer*)ownerLayer;
- (void) initFields;
- (bool) isDestroyed;
- (void) setDestroyed:(bool)destroyed;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DestroyableSimpleBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLESIMPLEBEHAVIOR_H
