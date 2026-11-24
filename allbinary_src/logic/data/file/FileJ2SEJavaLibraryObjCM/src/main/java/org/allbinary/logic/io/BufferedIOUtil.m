// Generated Code Do Not Modify
#include "org/allbinary/logic/io/BufferedIOUtil.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/file/AbFileNativeUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void BufferedIOUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BufferedIOUtil

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (void) copyMethod:(AbFile*)backupFile :(AbFile*)backupFileBak {
        const char* line = [StringUtil getInstance]->EMPTY_STRING;
        BufferedWriter* tmpOut = ((BufferedWriter*) [((BufferedWriter*) [BufferedWriter alloc]) init:((FileWriter*) [((FileWriter*) [FileWriter alloc]) init:[AbFileNativeUtil get:backupFileBak]])]);
        BufferedReader* tmpIn = ((BufferedReader*) [((BufferedReader*) [BufferedReader alloc]) init:((FileReader*) [((FileReader*) [FileReader alloc]) init:[AbFileNativeUtil get:backupFile]])]);
        while ([tmpIn ready]) {
            line = [tmpIn readLine];
            [tmpOut write:line :0 :((int32_t) strlen(line))];
            [tmpOut newLine];
        }
        [tmpOut flush];
}

@end

