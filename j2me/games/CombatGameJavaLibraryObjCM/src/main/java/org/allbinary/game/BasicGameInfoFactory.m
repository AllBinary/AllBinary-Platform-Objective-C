// Generated Code Do Not Modify
#include "org/allbinary/game/BasicGameInfoFactory.h"


static BasicGameInfoFactory* BasicGameInfoFactory_SINGLETON;

void BasicGameInfoFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicGameInfoFactory_SINGLETON = ((BasicGameInfoFactory*) [((BasicGameInfoFactory*) [BasicGameInfoFactory alloc]) init]);
}

@implementation BasicGameInfoFactory

- (void) initFields {
    self->currentReleaseIndex = 0;
    self->currentDestroyIndex = 0;
    self->total = 0;
}


+ (BasicGameInfoFactory*) getInstance {
        return (BasicGameInfoFactory_staticInit(), BasicGameInfoFactory_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod:(int32_t)total {
        self->currentReleaseIndex = 0;
        self->currentDestroyIndex = 0;
        self->total = total;
}


- (bool) isPeaked {
        if (self->currentDestroyIndex >= self->total) {
            return true;
        } else {
            return false;
        }
}


- (int32_t) howManyLeft {
        return self->total - self->currentDestroyIndex;
}

@end

