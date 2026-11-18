// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/FileFactory.h"
#include "org/allbinary/logic/io/file/AbFile.h"


static FileFactory* FileFactory_instance;

void FileFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FileFactory_instance = [((FileFactory*) [FileFactory alloc]) init];
}

@implementation FileFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (FileFactory*) getInstance {
        return (FileFactory_staticInit(), FileFactory_instance);
}


// throws Exception
- (AbFile*) getInstance:(const char*)filePath {
        return [AbFile createAbFileFromRawPath:filePath];
}


// throws Exception
- (AbFile*) getInstance:(AbFile*)file :(const char*)childFilePath {
        return [AbFile createAbFileWithChild:file :childFilePath];
}


// throws Exception
- (bool) isFile:(const char*)path {
        AbFile* file = [AbFile createAbFile:path];
        if ([file exists]) {
            return true;
        } else {
            return false;
        }
}

@end

