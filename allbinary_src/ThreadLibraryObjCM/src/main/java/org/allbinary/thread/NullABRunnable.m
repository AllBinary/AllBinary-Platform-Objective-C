// Generated Code Do Not Modify
#include "org/allbinary/thread/NullABRunnable.h"
#include "org/allbinary/thread/ABRunnable.h"


static NullABRunnable* NullABRunnable_instance;

void NullABRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullABRunnable_instance = ((NullABRunnable*) [((NullABRunnable*) [NullABRunnable alloc]) init]);
}

@implementation NullABRunnable

- (instancetype) init {
    self = [super init];
    return self;
}


+ (NullABRunnable*) getInstance {
        return (NullABRunnable_staticInit(), NullABRunnable_instance);
}


// synchronized
- (bool) isRunning {
        return false;
}

@end

