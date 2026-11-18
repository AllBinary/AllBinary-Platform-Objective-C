// Generated Code Do Not Modify
#include "org/allbinary/android/view/AllBinaryRenderer.h"


static AllBinaryRenderer* AllBinaryRenderer_instance;

void AllBinaryRenderer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryRenderer_instance = [((AllBinaryRenderer*) [AllBinaryRenderer alloc]) init];
}

@implementation AllBinaryRenderer

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AllBinaryRenderer*) getInstance {
        return (AllBinaryRenderer_staticInit(), AllBinaryRenderer_instance);
}


- (void) setRunnable:(Runnable*)runnable {
}


- (void) clearRunnable {
}

@end

