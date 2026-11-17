// Generated Code Do Not Modify
#include "org/allbinary/system/Memory.h"
#include "org/allbinary/logic/string/StringMaker.h"



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
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"Memory: Free: "];
        [stringBuffer appendlong:((int64_t) [[Runtime getRuntime] freeMemory])];
        [stringBuffer append:" Total: "];
        [stringBuffer appendlong:((int64_t) [[Runtime getRuntime] totalMemory])];
        return [stringBuffer toString];
}

@end

