// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"
#include "org/allbinary/logic/io/file/AbFile.h"



void AbFileNativeUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbFileNativeUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (File*) get:(AbFile*)file {
        return [file getFile];
}

@end

