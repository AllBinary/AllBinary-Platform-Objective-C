// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif



void GameRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameRunnable

- (void) initFields {
    self->WAIT = 240;
    self->FAST = 60;
    self->waitInMillis = ((int64_t) self->WAIT);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) run {
        [[DisplayInfoSingleton getInstance] process];
}


// throws Exception
- (void) processLoopSleep {
        java_sleep(self->waitInMillis);
}

@end

