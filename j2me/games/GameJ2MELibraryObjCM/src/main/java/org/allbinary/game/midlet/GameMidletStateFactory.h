#ifndef ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLETSTATEFACTORY_H
#define ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLETSTATEFACTORY_H
// Generated Code Do Not Modify
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameMidletStateFactory;
@class GameState;
@class GameStateFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface GameMidletStateFactory : ABObject {
@public
    LogUtil* logUtil;
    GameState* currentGameState;
}
- (instancetype) init;
- (void) initFields;
+ (GameMidletStateFactory*) getInstance;
- (GameState*) getCurrentGameState;
- (void) setCurrentGameState:(GameState*)currentGameState;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameMidletStateFactory_staticInit(void);

#if __has_include("org/allbinary/game/state/GameState.h")
#include "org/allbinary/game/state/GameState.h"
#endif

#endif // ORG_ALLBINARY_GAME_MIDLET_GAMEMIDLETSTATEFACTORY_H
