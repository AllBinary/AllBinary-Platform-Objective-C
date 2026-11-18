#ifndef ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLEBASEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLEBASEBEHAVIOR_H
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
@class DestroyableBaseBehavior;
@class CommonStrings;
@class DestroyableInterface;
#include "org/allbinary/game/combat/destroy/DestroyableInterface.h"

@interface DestroyableBaseBehavior : ABObject <DestroyableInterface> {
@public
}
- (instancetype) init;
+ (DestroyableBaseBehavior*) getInstance;
- (const char*) getName;
- (bool) isDestroyed;
- (void) setDestroyed:(bool)destroyed;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DestroyableBaseBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_DESTROY_DESTROYABLEBASEBEHAVIOR_H
