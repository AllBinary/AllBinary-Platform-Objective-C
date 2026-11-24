// Generated Code Do Not Modify
#include "org/allbinary/logic/ABSystemWrapper.h"


static ABSystemWrapper* ABSystemWrapper_instance;

void ABSystemWrapper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ABSystemWrapper_instance = ((ABSystemWrapper*) [((ABSystemWrapper*) [ABSystemWrapper alloc]) init]);
}

@implementation ABSystemWrapper

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ABSystemWrapper*) getInstance {
        return (ABSystemWrapper_staticInit(), ABSystemWrapper_instance);
}


- (void) arraycopy:(id)src :(int32_t)srcPos :(id)dest :(int32_t)destPos :(int32_t)length {
        java_array_copy(src, srcPos, dest, destPos, length);
}


- (int64_t) currentTimeMillis {
        return java_current_time_millis();
}

@end

