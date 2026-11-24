// Generated Code Do Not Modify
#include "org/allbinary/thread/NullRunnable.h"
#include "org/allbinary/thread/ARunnable.h"


static NullRunnable* NullRunnable_instance;

void NullRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullRunnable_instance = ((NullRunnable*) [((NullRunnable*) [NullRunnable alloc]) init]);
}

@implementation NullRunnable


+ (NullRunnable*) getInstance {
        return (NullRunnable_staticInit(), NullRunnable_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}

@end

