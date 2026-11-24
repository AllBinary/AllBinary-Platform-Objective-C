// Generated Code Do Not Modify
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/state/GameState.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id GameStateFactory_instance;

void GameStateFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameStateFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameStateFactory

- (void) initFields {
    self->index = 0;
    self->NO_GAME_STATE = [self createGameState:"NO_GAME_STATE"];
    self->PLAYING_GAME_STATE = [self createGameState:"PLAYING_GAME_STATE"];
    self->SHOW_END_RESULT_GAME_STATE = [self createGameState:"SHOW_END_RESULT_GAME_STATE"];
    self->SHOW_HIGH_SCORE_GAME_STATE = [self createGameState:"SHOW_HIGH_SCORE_GAME_STATE"];
}


+ (GameStateFactory*) getInstance {
        if ((GameStateFactory_staticInit(), GameStateFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameStateFactory_instance = ((GameStateFactory*) [((GameStateFactory*) [GameStateFactory alloc]) init]);
        }
        return ((GameStateFactory*) (GameStateFactory_staticInit(), GameStateFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (GameState*) createGameState:(const char*)name {
        return ((GameState*) [((GameState*) [GameState alloc]) init:name :self->index++]);
}

@end

