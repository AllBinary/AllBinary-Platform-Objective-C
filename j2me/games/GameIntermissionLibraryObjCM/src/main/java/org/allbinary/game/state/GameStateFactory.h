#ifndef ORG_ALLBINARY_GAME_STATE_GAMESTATEFACTORY_H
#define ORG_ALLBINARY_GAME_STATE_GAMESTATEFACTORY_H
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
// package org.allbinary.game.state

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameStateFactory;
@class NullUtil;
@class GameState;
#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif

@interface GameStateFactory : ABObject {
@public
    int32_t index;
    GameState* NO_GAME_STATE;
    GameState* PLAYING_GAME_STATE;
    GameState* SHOW_END_RESULT_GAME_STATE;
    GameState* SHOW_HIGH_SCORE_GAME_STATE;
}
- (instancetype) init;
- (void) initFields;
+ (GameStateFactory*) getInstance;
- (GameState*) createGameState:(const char*)name;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameStateFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_STATE_GAMESTATEFACTORY_H
