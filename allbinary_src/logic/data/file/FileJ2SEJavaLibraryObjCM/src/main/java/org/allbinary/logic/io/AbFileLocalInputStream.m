// Generated Code Do Not Modify
#include "org/allbinary/logic/io/AbFileLocalInputStream.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"
#include "org/allbinary/logic/io/AbFileInputStream.h"
#if __has_include("org/allbinary/logic/io/File.h")
#include "org/allbinary/logic/io/File.h"
#endif
#if __has_include("org/allbinary/logic/io/file/File.h")
#include "org/allbinary/logic/io/file/File.h"
#endif
#if __has_include("org/allbinary/logic/io/file/File.h")
#include "org/allbinary/logic/io/file/File.h"
#endif



void AbFileLocalInputStream_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbFileLocalInputStream


- (instancetype) init:(AbFile*)file {
        self = [super init:[[AbFileNativeUtil get:file] getPath]];
    return self;
}

@end

