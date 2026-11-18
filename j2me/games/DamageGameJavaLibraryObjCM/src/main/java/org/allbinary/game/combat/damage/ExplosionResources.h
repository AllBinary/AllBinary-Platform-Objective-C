#ifndef ORG_ALLBINARY_GAME_COMBAT_DAMAGE_EXPLOSIONRESOURCES_H
#define ORG_ALLBINARY_GAME_COMBAT_DAMAGE_EXPLOSIONRESOURCES_H
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
@class ExplosionResources;

@interface ExplosionResources : ABObject {
@public
    const char* EXPLOSION_90_RESOURCE;
    const char* EXPLOSION_60_RESOURCE;
    const char* HALF_EXPLOSION_RESOURCE;
    const char* THIRD_EXPLOSION_RESOURCE;
}
- (instancetype) init;
- (void) initFields;
+ (ExplosionResources*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ExplosionResources_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_DAMAGE_EXPLOSIONRESOURCES_H
