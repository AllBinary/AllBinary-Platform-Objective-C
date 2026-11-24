// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/BasicArrayListResetablePool.h"
#include "org/allbinary/logic/util/cache/AbstractArrayListPool.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void BasicArrayListResetablePool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayListResetablePool


- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface {
        self = [super init:cacheableInterfaceFactoryInterface];
    return self;
}


- (void) clear {
}


// throws Exception
- (CacheableInterface*) remove:(id)key {
        int32_t size = [self->buffers size];
        if (size > 0) {
            return ((CacheableInterface*) [self->buffers removeAt:size - 1]);
        } else {
            return [((id<CacheableInterfaceFactoryInterface>) self->cacheableInterfaceFactoryInterface) getInstance:key];
        }
}

@end

