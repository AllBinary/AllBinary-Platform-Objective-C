// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/BasicArrayListPool.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/logic/util/cache/AbstractArrayListPool.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"
#include "org/allbinary/logic/util/cache/BasicArrayListCacheable.h"



void BasicArrayListPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayListPool


- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface {
        self = [super init:cacheableInterfaceFactoryInterface];
    return self;
}


- (void) clear {
        [self->buffers clear];
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


// throws Exception
- (void) addAll:(BasicArrayList*)usedList {
        for (int32_t index = [usedList size]; --index >= 0; ) {
            CacheableInterface* anyType = ((CacheableInterface*) usedList->objectArray[index]);
            [self add:anyType];
        }
        [usedList clear];
}


// throws Exception
- (void) releaseUsedBackToPool:(BasicArrayList*)usedList {
        for (int32_t index = [usedList size]; --index >= 0; ) {
            BasicArrayListCacheable* list = ((BasicArrayListCacheable*) usedList->objectArray[index]);
            if ([list size] == 0) {
                [usedList removeAt:index];
                [self add:list];
            }
        }
}

@end

