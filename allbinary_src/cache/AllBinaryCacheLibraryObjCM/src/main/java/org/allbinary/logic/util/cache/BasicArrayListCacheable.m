// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/BasicArrayListCacheable.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void BasicArrayListCacheable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayListCacheable

- (instancetype) init {
    self = [super init];
    return self;
}


- (id) getKey {
        return [StringUtil getInstance]->EMPTY_STRING;
}

@end

