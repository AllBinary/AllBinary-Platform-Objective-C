// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/GamePersistanceSingleton.h"
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"


static GamePersistanceSingleton* GamePersistanceSingleton_GAME_PERSISTANCE;

void GamePersistanceSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GamePersistanceSingleton_GAME_PERSISTANCE = [((GamePersistanceSingleton*) [GamePersistanceSingleton alloc]) init];
}

@implementation GamePersistanceSingleton


+ (GamePersistanceSingleton*) getInstance {
        return (GamePersistanceSingleton_staticInit(), GamePersistanceSingleton_GAME_PERSISTANCE);
}


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->SAVED_GAME_RECORD_ID];
    return self;
}

@end

