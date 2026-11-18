// Generated Code Do Not Modify
#include "org/allbinary/logic/io/NullWriter.h"


NullWriter* NullWriter_NULL_WRITER;

void NullWriter_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullWriter_NULL_WRITER = [((NullWriter*) [NullWriter alloc]) init];
}

@implementation NullWriter

- (instancetype) init {
    self = [super init];
    return self;
}


// throws IOException
- (void) write:(int32_t)c {
}


// throws IOException
- (void) write:(uint16_t*)cbuf :(int32_t)off :(int32_t)len {
}


// throws IOException
- (void) write_2:(const char*)str {
}


// throws IOException
- (void) write_2:(const char*)str :(int32_t)off :(int32_t)len {
}


// throws IOException
- (void) flush {
}


// throws IOException
- (void) close {
}

@end

