// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"


static GameRunnable* NullWaitGameRunnable_instance;

void NullWaitGameRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullWaitGameRunnable_instance = [((NullWaitGameRunnable*) [NullWaitGameRunnable alloc]) init];
}

@implementation NullWaitGameRunnable

- (instancetype) init {
    self = [super init];
    return self;
}


+ (GameRunnable*) getInstance {
        return (NullWaitGameRunnable_staticInit(), NullWaitGameRunnable_instance);
}

@end

