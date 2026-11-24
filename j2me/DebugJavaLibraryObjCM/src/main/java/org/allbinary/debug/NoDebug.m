// Generated Code Do Not Modify
#include "org/allbinary/debug/NoDebug.h"
#include "org/allbinary/debug/DebugInterface.h"


static DebugInterface* NoDebug_SINGLETON;

void NoDebug_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoDebug_SINGLETON = ((NoDebug*) [((NoDebug*) [NoDebug alloc]) init]);
}

@implementation NoDebug

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DebugInterface*) getInstance {
        return (NoDebug_staticInit(), NoDebug_SINGLETON);
}


- (void) start {
}


- (void) stop {
}


- (int64_t) getMaxTime {
        return 10000LL;
}


- (int64_t) getStartTime {
        return 0LL;
}


- (bool) isRunning {
        return false;
}

@end

