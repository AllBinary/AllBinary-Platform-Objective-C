// Generated Code Do Not Modify
#include "org/allbinary/logic/io/NullCloseable.h"


NullCloseable* NullCloseable_NULL_CLOSEABLE;

void NullCloseable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullCloseable_NULL_CLOSEABLE = ((NullCloseable*) [((NullCloseable*) [NullCloseable alloc]) init]);
}

@implementation NullCloseable

- (instancetype) init {
    self = [super init];
    return self;
}


// throws IOException
- (void) close {
}

@end

