// Generated Code Do Not Modify
#include "org/allbinary/logic/io/FileStreamFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/io/file/AbFile.h"
#include "org/allbinary/logic/io/path/AbPath.h"
#include "org/allbinary/logic/io/AbFileInputStream.h"
#include "org/allbinary/logic/io/AbFileOutputStream.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id FileStreamFactory_SINGLETON;

void FileStreamFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FileStreamFactory_SINGLETON = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation FileStreamFactory


+ (FileStreamFactory*) getInstance {
        if ((FileStreamFactory_staticInit(), FileStreamFactory_SINGLETON) == [NullUtil getInstance]->NULL_OBJECT) {
            FileStreamFactory_SINGLETON = ((FileStreamFactory*) [((FileStreamFactory*) [FileStreamFactory alloc]) init]);
        }
        return ((FileStreamFactory*) (FileStreamFactory_staticInit(), FileStreamFactory_SINGLETON));
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (AbFileInputStream*) getFileInputStreamInstance:(const char*)path :(const char*)fileName {
        AbPath* FILEABPATH = ((AbPath*) [((AbPath*) [AbPath alloc]) init:path :fileName]);
        AbFile* file = [AbFile createAbFileFromAbPath:FILEABPATH];
        return [AbFileInputStream createFromAbFile:file];
}


// throws Exception
- (AbFileOutputStream*) getFileOutputStreamInstance:(const char*)path :(const char*)fileName {
        AbPath* FILEABPATH = ((AbPath*) [((AbPath*) [AbPath alloc]) init:path :fileName]);
        AbFile* file = [AbFile createAbFileFromAbPath:FILEABPATH];
        if ([file exists]) {
            [file delete];
            [file createNewFile];
        }
        return [AbFileOutputStream createFromAbFile:file];
}


// throws Exception
- (void) delete:(const char*)path :(const char*)fileName {
        AbPath* FILEABPATH = ((AbPath*) [((AbPath*) [AbPath alloc]) init:path :fileName]);
        AbFile* file = [AbFile createAbFileFromAbPath:FILEABPATH];
        [file delete];
}

@end

