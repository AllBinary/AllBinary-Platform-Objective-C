// Generated Code Do Not Modify
#include "org/allbinary/system/Memory.h"
#include "org/allbinary/logic/string/StringUtil.h"



void Memory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Memory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) getInfo {
        return [StringUtil getInstance]->EMPTY_STRING;
}

@end

