// Generated Code Do Not Modify
#include "org/allbinary/game/GameStrings.h"


static GameStrings* GameStrings_instance;

void GameStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameStrings_instance = ((GameStrings*) [((GameStrings*) [GameStrings alloc]) init]);
}

@implementation GameStrings

- (void) initFields {
    self->PROCESS_TICK = "processTick";
    self->ON_GAME_INITIALIZED = "onGameInitialized";
    self->UPDATESURFACE = "updateSurface";
    self->ON_SET_DISPLAYABLE = "onSetDisplayable";
    self->UNPAUSE = "unPause";
    self->TOGGLE_MENU = "toggleMenu";
    self->SET_GAME_OVER = "setGameOver";
    self->GAME_STATE = "Game State: ";
    self->SET_GAME_STATE = "setGameState";
    self->STOP_GAME_CANVAS_RUNNABLE_INTERFACE = "stopGameCanvasRunnableInterface";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameStrings*) getInstance {
        return (GameStrings_staticInit(), GameStrings_instance);
}

@end

