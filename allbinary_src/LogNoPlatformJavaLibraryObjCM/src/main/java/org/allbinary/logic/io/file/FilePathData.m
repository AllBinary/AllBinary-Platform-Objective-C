// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/FilePathData.h"


static FilePathData* FilePathData_instance;

void FilePathData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FilePathData_instance = ((FilePathData*) [((FilePathData*) [FilePathData alloc]) init]);
}

@implementation FilePathData

- (void) initFields {
    self->SEPARATORCHAR = (File_staticInit(), File_separatorChar);
    self->PATH_START = (File_staticInit(), File_separator);
}


+ (FilePathData*) getInstance {
        return (FilePathData_staticInit(), FilePathData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        if ((File_staticInit(), File_separatorChar) == u'\\') {
            self->PATH_START = java_concat((File_staticInit(), File_separator), (File_staticInit(), File_separator));
        }
    return self;
}

@end

