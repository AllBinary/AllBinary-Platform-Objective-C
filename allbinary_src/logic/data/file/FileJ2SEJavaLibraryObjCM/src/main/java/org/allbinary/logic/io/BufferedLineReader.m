// Generated Code Do Not Modify
#include "org/allbinary/logic/io/BufferedLineReader.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"



void BufferedLineReader_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BufferedLineReader

- (void) initFields {
    
}


- (instancetype) init:(AbFile*)file {
    self = [super init];
    [self initFields];
        self->tmpIn = [((BufferedReader*) [BufferedReader alloc]) init:[((FileReader*) [FileReader alloc]) init:[AbFileNativeUtil get:file]]];
    return self;
}


- (void) readUpToLines:(int64_t)readAheadIndex {
}


// throws Exception
- (const char*) readLine {
        return [self->tmpIn readLine];
}


// throws Exception
- (bool) ready {
        return [self->tmpIn ready];
}


- (int64_t) getSize {
        return 0LL;
}


- (int32_t) getCurrent {
        return 0;
}

@end

