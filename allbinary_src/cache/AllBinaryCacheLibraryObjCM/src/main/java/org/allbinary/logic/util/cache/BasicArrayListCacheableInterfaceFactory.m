// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/BasicArrayListCacheableInterfaceFactory.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/BasicArrayListCacheable.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void BasicArrayListCacheableInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayListCacheableInterfaceFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (CacheableInterface*) getInstance:(id)key {
        return [((BasicArrayListCacheable*) [BasicArrayListCacheable alloc]) init];
}

@end

