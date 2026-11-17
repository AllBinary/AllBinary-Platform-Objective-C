// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/FilePathData.h"


static FilePathData* FilePathData_instance;

void FilePathData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FilePathData_instance = [((FilePathData*) [FilePathData alloc]) init];
}

@implementation FilePathData

- (void) initFields {
    self->SEPARATORCHAR = u'\\';
    self->PATH_START = "\\\\";
}


+ (FilePathData*) getInstance {
        return (FilePathData_staticInit(), FilePathData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

