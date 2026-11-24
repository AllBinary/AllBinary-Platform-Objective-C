// Generated Code Do Not Modify
#include "org/allbinary/game/BasicHighScoresGameInfoFactory.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/game/GameMode.h"
#include "org/allbinary/game/PlayerTypesFactory.h"


static BasicHighScoresGameInfoFactory* BasicHighScoresGameInfoFactory_SINGLETON;

void BasicHighScoresGameInfoFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicHighScoresGameInfoFactory_SINGLETON = ((BasicHighScoresGameInfoFactory*) [((BasicHighScoresGameInfoFactory*) [BasicHighScoresGameInfoFactory alloc]) init]);
}

@implementation BasicHighScoresGameInfoFactory

- (void) initFields {
    self->MULTI_PLAYER_SERVER = ((GameInfo*) [((GameInfo*) [GameInfo alloc]) init:[GameTypeFactory getInstance]->MULTI_PLAYER :(GameMode_staticInit(), GameMode_SERVER) :[PlayerTypesFactory getInstance]->PLAYER_TYPE_ONE :0 :0]);
    self->SINGLE_PLAYER_SERVER = ((GameInfo*) [((GameInfo*) [GameInfo alloc]) init:[GameTypeFactory getInstance]->SINGLE_PLAYER :(GameMode_staticInit(), GameMode_SERVER) :[PlayerTypesFactory getInstance]->PLAYER_TYPE_ONE :0 :0]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicHighScoresGameInfoFactory*) getInstance {
        return (BasicHighScoresGameInfoFactory_staticInit(), BasicHighScoresGameInfoFactory_SINGLETON);
}

@end

