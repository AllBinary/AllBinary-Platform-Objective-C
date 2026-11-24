// Generated Code Do Not Modify
#include "org/allbinary/logic/io/AbFileInputStream.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"



void AbFileInputStream_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbFileInputStream


- (instancetype) init:(const char*)name {
        self = [super init:name];
    return self;
}


// throws FileNotFoundException
+ (AbFileInputStream*) createFromAbFile:(AbFile*)file {
        return ((AbFileInputStream*) [((AbFileInputStream*) [AbFileInputStream alloc]) init:[[AbFileNativeUtil get:file] getPath]]);
}


// throws FileNotFoundException
+ (AbFileInputStream*) createFromFile:(File*)file {
        return ((AbFileInputStream*) [((AbFileInputStream*) [AbFileInputStream alloc]) init:[file getPath]]);
}

@end

