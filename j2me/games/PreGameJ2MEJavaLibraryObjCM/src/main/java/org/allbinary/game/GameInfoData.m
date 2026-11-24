// Generated Code Do Not Modify
#include "org/allbinary/game/GameInfoData.h"


static GameInfoData* GameInfoData_instance;

void GameInfoData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInfoData_instance = ((GameInfoData*) [((GameInfoData*) [GameInfoData alloc]) init]);
}

@implementation GameInfoData

- (void) initFields {
    self->GAME_TYPE = "GAME_TYPE";
    self->GAME_MODE = "GAME_MODE";
    self->PLAYER_TYPE = "PLAYER_TYPE";
    self->HIGHEST_LEVEL = "HIGHEST_LEVEL";
    self->CURRENT_LEVEL = "CURRENT_LEVEL";
    self->SOFTWARE_INFORMATION = "SOFTWARE_INFORMATION";
}


+ (GameInfoData*) getInstance {
        return (GameInfoData_staticInit(), GameInfoData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

