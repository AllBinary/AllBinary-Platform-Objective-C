// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"



void GameConfigurationGauge_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameConfigurationGauge


- (instancetype) init:(GameConfiguration*)gameConfiguration {
        self = [super init:[gameConfiguration getName] :((bool) ([gameConfiguration isModifiable])) :((int32_t) ([gameConfiguration getMaxValue])) - ((int32_t) ([gameConfiguration getMinValue])) :((int32_t) ([gameConfiguration getValue])) - ((int32_t) ([gameConfiguration getMinValue]))];
    return self;
}

@end

