// Generated Code Do Not Modify
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"


static GameTickTimeDelayHelper* GameTickTimeDelayHelperFactory_instance;

void GameTickTimeDelayHelperFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameTickTimeDelayHelperFactory_instance = [((GameTickTimeDelayHelper*) [GameTickTimeDelayHelper alloc]) init:-1];
}

@implementation GameTickTimeDelayHelperFactory


+ (GameTickTimeDelayHelper*) getInstance {
        return (GameTickTimeDelayHelperFactory_staticInit(), GameTickTimeDelayHelperFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}

@end

