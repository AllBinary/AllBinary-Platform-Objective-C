// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/PoolInterfaceFactory.h"
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/PoolType.h"
#include "org/allbinary/logic/util/cache/CachePolicy.h"



void PoolInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PoolInterfaceFactory


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (PoolInterface*) getInstance:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface :(PoolType*)poolType :(CachePolicy*)cachePolicy {
        java_throw(java_exception_new("Exception", java_concat("No Such PoolType: ", [poolType toString])));
}

@end

