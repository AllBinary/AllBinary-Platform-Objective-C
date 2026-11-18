// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/PoolType.h"
#include "org/allbinary/logic/util/cache/CacheType.h"



void PoolType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PoolType

- (void) initFields {
    
}


- (instancetype) init:(CacheType*)cacheType {
    self = [super init];
    [self initFields];
        self->cacheType = cacheType;
    return self;
}


- (CacheType*) getCacheType {
        return self->cacheType;
}


- (const char*) toString {
        const char* POOL_TYPE = "PoolType: ";
        return java_concat(POOL_TYPE, [[self getCacheType] toString]);
}

@end

