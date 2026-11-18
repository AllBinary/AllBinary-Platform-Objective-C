// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/CacheInterfaceFactory.h"
#include "org/allbinary/logic/util/cache/CacheInterface.h"
#include "org/allbinary/logic/util/cache/CacheType.h"
#include "org/allbinary/logic/util/cache/CachePolicy.h"



void CacheInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CacheInterfaceFactory


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (CacheInterface*) getInstance:(CacheType*)cacheType :(CachePolicy*)cachePolicy {
        java_throw(java_exception_new("Exception", java_concat("No such ", [cacheType toString])));
}

@end

