// Generated Code Do Not Modify
#include "org/allbinary/thread/NullPriorityRunnable.h"
#include "org/allbinary/thread/PriorityRunnable.h"



void NullPriorityRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullPriorityRunnable

- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) getPriority {
        return 0;
}


- (bool) isDone {
        return true;
}


- (void) reset {
}


- (void) run {
}

@end

