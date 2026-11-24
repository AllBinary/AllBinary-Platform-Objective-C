// Generated Code Do Not Modify
#include "org/allbinary/game/health/NullHealthListener.h"
#include "org/allbinary/game/health/HealthListenerInterface.h"


NullHealthListener* NullHealthListener_NULL_HEALTH_LISTENER;

void NullHealthListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullHealthListener_NULL_HEALTH_LISTENER = ((NullHealthListener*) [((NullHealthListener*) [NullHealthListener alloc]) init]);
}

@implementation NullHealthListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onHealthChange {
}

@end

