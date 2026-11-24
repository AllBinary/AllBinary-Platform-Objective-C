// Generated Code Do Not Modify
#include "org/allbinary/logic/io/NullOutputStream.h"


NullOutputStream* NullOutputStream_NULL_OUTPUT_STREAM;

void NullOutputStream_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullOutputStream_NULL_OUTPUT_STREAM = ((NullOutputStream*) [((NullOutputStream*) [NullOutputStream alloc]) init]);
}

@implementation NullOutputStream

- (instancetype) init {
    self = [super init];
    return self;
}


// throws IOException
- (void) write:(int32_t)b {
}


// throws IOException
- (void) write:(int8_t*)b :(int32_t)off :(int32_t)len {
}


- (void) close {
}

@end

