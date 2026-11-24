// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameSpeed.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"


static GameSpeed* GameSpeed_instance;

void GameSpeed_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameSpeed_instance = ((GameSpeed*) [((GameSpeed*) [GameSpeed alloc]) init]);
}

@implementation GameSpeed

- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) getSpeed {
        GameConfiguration* speedGameConfiguration = [GameConfigurationCentral getInstance]->SPEED;
        return (((int32_t) ([speedGameConfiguration getMaxValue])) - ((int32_t) ([speedGameConfiguration getValue])) + 1);
}


- (int32_t) getDelay {
        GameConfiguration* speedGameConfiguration = [GameConfigurationCentral getInstance]->SPEED;
        return 19 * (((int32_t) ([speedGameConfiguration getMaxValue])) - ((int32_t) ([speedGameConfiguration getValue])));
}


+ (GameSpeed*) getInstance {
        return (GameSpeed_staticInit(), GameSpeed_instance);
}

@end

