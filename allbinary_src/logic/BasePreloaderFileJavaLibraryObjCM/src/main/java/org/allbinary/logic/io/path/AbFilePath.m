// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/AbFilePath.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/io/path/AbPath.h"
#include "org/allbinary/logic/io/path/AbPathData.h"
#include "org/allbinary/logic/io/path/PathUtil.h"



void AbFilePath_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbFilePath


- (instancetype) init:(const char*)aPath {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING];
        AbPathData* pathData = [AbPathData getInstance];
        PathUtil* abPathUtil = [PathUtil getInstance];
        self->schema = [self getSchema:aPath];
        [self setName:[pathData getNameFromPath:aPath]];
        [self setPath:[abPathUtil adjust:[self getPathFromPath:[[abPathUtil removeNameFromPath:aPath] toString]]]];
    return self;
}

@end

