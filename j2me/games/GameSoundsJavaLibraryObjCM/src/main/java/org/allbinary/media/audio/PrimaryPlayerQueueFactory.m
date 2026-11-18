// Generated Code Do Not Modify
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/PlayerQueue.h"


static PlayerQueue* PrimaryPlayerQueueFactory_SINGLETON;

void PrimaryPlayerQueueFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PrimaryPlayerQueueFactory_SINGLETON = [((PlayerQueue*) [PlayerQueue alloc]) init:4];
}

@implementation PrimaryPlayerQueueFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PlayerQueue*) getInstance {
        return (PrimaryPlayerQueueFactory_staticInit(), PrimaryPlayerQueueFactory_SINGLETON);
}

@end

