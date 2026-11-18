// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/AutomaticCacheInterfaceFactory.h"
#include "org/allbinary/logic/util/cache/AutomaticCacheInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/CacheType.h"
#include "org/allbinary/logic/util/cache/CachePolicy.h"



void AutomaticCacheInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AutomaticCacheInterfaceFactory


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (AutomaticCacheInterface*) getInstance:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface :(CacheType*)cacheType :(CachePolicy*)cachePolicy {
        java_throw(java_exception_new("Exception", java_concat("No such ", [cacheType toString])));
}

@end

