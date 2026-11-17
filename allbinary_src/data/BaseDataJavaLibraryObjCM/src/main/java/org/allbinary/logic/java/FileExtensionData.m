// Generated Code Do Not Modify
#include "org/allbinary/logic/java/FileExtensionData.h"


static FileExtensionData* FileExtensionData_instance;

void FileExtensionData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FileExtensionData_instance = [((FileExtensionData*) [FileExtensionData alloc]) init];
}

@implementation FileExtensionData

- (void) initFields {
    self->DOT_JAVA_SOURCE = ".java";
    self->JAVA_SOURCE = "java";
}


+ (FileExtensionData*) getInstance {
        return (FileExtensionData_staticInit(), FileExtensionData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

