// Generated Code Do Not Modify
#include "org/allbinary/game/IntermissionFactory.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"


static IntermissionFactory* IntermissionFactory_instance;

void IntermissionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    IntermissionFactory_instance = [((IntermissionFactory*) [IntermissionFactory alloc]) init];
}

@implementation IntermissionFactory

- (void) initFields {
    self->START_LEVEL_INTERMISSION_GAME_STATE = [[GameStateFactory getInstance] createGameState:"START_LEVEL_INTERMISSION_GAME_STATE"];
    self->WAIT_LEVEL_INTERMISSION_GAME_STATE = [[GameStateFactory getInstance] createGameState:"WAIT_LEVEL_INTERMISSION_GAME_STATE"];
    self->SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = [[GameStateFactory getInstance] createGameState:"SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE"];
    self->SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = [[GameStateFactory getInstance] createGameState:"SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (IntermissionFactory*) getInstance {
        return (IntermissionFactory_staticInit(), IntermissionFactory_instance);
}

@end

