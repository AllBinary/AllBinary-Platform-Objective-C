// Generated Code Do Not Modify
#include "org/allbinary/logic/io/file/FilePathUtil.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/io/file/FilePathData.h"



void FilePathUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FilePathUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) adjust:(const char*)path {
        AbPathData* abPathData = [AbPathData getInstance];
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        FilePathData* filePathData = [FilePathData getInstance];
        if ([stringValidationUtil isEmpty:path]) {
            return filePathData->PATH_START;
        }
        path = java_string_replace(path, abPathData->SEPARATORCHAR, filePathData->SEPARATORCHAR);
        return path;
}

@end

