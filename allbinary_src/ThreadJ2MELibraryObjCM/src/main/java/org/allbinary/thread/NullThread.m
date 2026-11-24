// Generated Code Do Not Modify
#include "org/allbinary/thread/NullThread.h"


Thread* NullThread_NULL_THREAD;

void NullThread_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullThread_NULL_THREAD = ((Thread*) [((Thread*) [Thread alloc]) init]);
}

@implementation NullThread

- (instancetype) init {
    self = [super init];
    return self;
}

@end

