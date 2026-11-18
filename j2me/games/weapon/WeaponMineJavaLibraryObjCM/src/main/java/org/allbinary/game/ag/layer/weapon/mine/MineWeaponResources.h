#ifndef ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINEWEAPONRESOURCES_H
#define ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINEWEAPONRESOURCES_H
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
@class MineWeaponResources;
@class BasicGameResources;
@class NullUtil;
#include "org/allbinary/game/layer/resources/BasicGameResources.h"

@interface MineWeaponResources : BasicGameResources {
@public
    const char* DROP_TEXT_RESOURCE;
    const char* DROP_RESOURCE;
    const char* DROP_ICON_RESOURCE;
}
- (instancetype) init;
- (void) initFields;
+ (MineWeaponResources*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MineWeaponResources_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_WEAPON_MINE_MINEWEAPONRESOURCES_H
