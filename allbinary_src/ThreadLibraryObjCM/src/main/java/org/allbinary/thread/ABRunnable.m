// Generated Code Do Not Modify
#include "org/allbinary/thread/ABRunnable.h"
#include "org/allbinary/thread/RunnableInterface.h"



void ABRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABRunnable

- (void) initFields {
    self->running = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setThread:(Thread*)thread {
}


// synchronized
- (bool) isRunning {
        return self->running;
}


// synchronized
- (void) setRunning:(bool)running {
        self->running = running;
}


- (void) run {
}


- (int32_t) getType {
        return -1;
}

@end

