// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/NoCacheableFactory.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void NoCacheableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoCacheableFactory


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (CacheableInterface*) getInstance:(id)key {
        java_throw(java_exception_new("Exception", "This Factory Does Not"));
}

@end

