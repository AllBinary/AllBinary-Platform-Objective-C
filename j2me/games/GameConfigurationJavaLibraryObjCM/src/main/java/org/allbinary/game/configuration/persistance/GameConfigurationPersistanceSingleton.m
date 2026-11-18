// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.h"
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"


static GameConfigurationPersistanceSingleton* GameConfigurationPersistanceSingleton_GAME_PERSISTANCE;

void GameConfigurationPersistanceSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfigurationPersistanceSingleton_GAME_PERSISTANCE = [((GameConfigurationPersistanceSingleton*) [GameConfigurationPersistanceSingleton alloc]) init];
}

@implementation GameConfigurationPersistanceSingleton


+ (GameConfigurationPersistanceSingleton*) getInstance {
        return (GameConfigurationPersistanceSingleton_staticInit(), GameConfigurationPersistanceSingleton_GAME_PERSISTANCE);
}


- (instancetype) init {
        self = [super init:[GamePersistanceStrings getInstance]->SAVED_GAME_CONFIGURATION_RECORD_ID];
    return self;
}

@end

