// Generated Code Do Not Modify
#include "org/allbinary/logic/io/NullReader.h"


NullReader* NullReader_NULL_READER;

void NullReader_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullReader_NULL_READER = [((NullReader*) [NullReader alloc]) init];
}

@implementation NullReader

- (instancetype) init {
    self = [super init];
    return self;
}


// throws IOException
- (int32_t) read {
        return -1;
}


// throws IOException
- (int32_t) read:(uint16_t*)cbuf :(int32_t)off :(int32_t)len {
        return -1;
}


// throws IOException
- (bool) ready {
        return false;
}


// throws IOException
- (int64_t) skip:(int64_t)n {
        return 0LL;
}


- (void) close {
}

@end

