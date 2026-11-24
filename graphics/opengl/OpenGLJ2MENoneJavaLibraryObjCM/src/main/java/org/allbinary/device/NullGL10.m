// Generated Code Do Not Modify
#include "org/allbinary/device/NullGL10.h"


NullGL10* NullGL10_NULL_GL10;

void NullGL10_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullGL10_NULL_GL10 = ((NullGL10*) [((NullGL10*) [NullGL10 alloc]) init]);
}

@implementation NullGL10

- (instancetype) init {
    self = [super init];
    return self;
}

@end

