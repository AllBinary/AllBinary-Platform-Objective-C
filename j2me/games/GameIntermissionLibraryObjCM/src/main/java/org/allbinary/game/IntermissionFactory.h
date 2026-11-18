#ifndef ORG_ALLBINARY_GAME_INTERMISSIONFACTORY_H
#define ORG_ALLBINARY_GAME_INTERMISSIONFACTORY_H
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
// package org.allbinary.game

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class IntermissionFactory;
@class GameState;
@class GameStateFactory;
#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif

@interface IntermissionFactory : ABObject {
@public
    GameState* START_LEVEL_INTERMISSION_GAME_STATE;
    GameState* WAIT_LEVEL_INTERMISSION_GAME_STATE;
    GameState* SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE;
    GameState* SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE;
}
- (instancetype) init;
- (void) initFields;
+ (IntermissionFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IntermissionFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INTERMISSIONFACTORY_H
