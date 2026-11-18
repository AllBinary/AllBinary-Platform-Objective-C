#ifndef ORG_ALLBINARY_GAME_COMBAT_COMBATBASEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_COMBAT_COMBATBASEBEHAVIOR_H
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
// package org.allbinary.game.combat

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CombatBaseBehavior;
@class DamageableBaseBehavior;
@class DestroyableBaseBehavior;
#if __has_include("org/allbinary/game/combat/damage/DamageableBaseBehavior.h")
#include "org/allbinary/game/combat/damage/DamageableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h")
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"
#endif

@interface CombatBaseBehavior : ABObject {
@public
    DamageableBaseBehavior* damageableBaseBehavior;
    DestroyableBaseBehavior* destroyableBaseBehavior;
    bool readyForExplosion;
}
- (instancetype) init:(DamageableBaseBehavior*)damageableBaseBehavior :(DestroyableBaseBehavior*)destroyableBaseBehavior;
- (void) initFields;
- (DamageableBaseBehavior*) getDamageableBaseBehavior;
- (DestroyableBaseBehavior*) getDestroyableBaseBehavior;
- (bool) isReadyForExplosion;
- (void) setReadyForExplosion:(bool)readyForExplosion;
@end

extern CombatBaseBehavior* CombatBaseBehavior_NULL_COMBAT_BEHAVIOR;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CombatBaseBehavior_staticInit(void);

#if __has_include("org/allbinary/game/combat/damage/DamageableBaseBehavior.h")
#include "org/allbinary/game/combat/damage/DamageableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h")
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"
#endif

#endif // ORG_ALLBINARY_GAME_COMBAT_COMBATBASEBEHAVIOR_H
