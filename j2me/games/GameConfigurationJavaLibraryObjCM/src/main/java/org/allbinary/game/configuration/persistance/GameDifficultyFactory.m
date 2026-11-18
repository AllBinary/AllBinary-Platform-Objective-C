// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/GameDifficultyFactory.h"


static GameDifficultyFactory* GameDifficultyFactory_instance;

void GameDifficultyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameDifficultyFactory_instance = [((GameDifficultyFactory*) [GameDifficultyFactory alloc]) init];
}

@implementation GameDifficultyFactory

- (void) initFields {
    self->level = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameDifficultyFactory*) getInstance {
        return (GameDifficultyFactory_staticInit(), GameDifficultyFactory_instance);
}


- (void) setLevel:(int32_t)level {
        self->level = level;
}


- (int32_t) getLevel {
        return self->level;
}

@end

