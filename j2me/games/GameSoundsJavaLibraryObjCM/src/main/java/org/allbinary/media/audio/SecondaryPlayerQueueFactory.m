// Generated Code Do Not Modify
#include "org/allbinary/media/audio/SecondaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/PlayerQueue.h"


static PlayerQueue* SecondaryPlayerQueueFactory_SINGLETON;

void SecondaryPlayerQueueFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SecondaryPlayerQueueFactory_SINGLETON = ((PlayerQueue*) [((PlayerQueue*) [PlayerQueue alloc]) init:4]);
}

@implementation SecondaryPlayerQueueFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PlayerQueue*) getInstance {
        return (SecondaryPlayerQueueFactory_staticInit(), SecondaryPlayerQueueFactory_SINGLETON);
}

@end

