// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/AbstractArrayListPool.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void AbstractArrayListPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbstractArrayListPool

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->buffers = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    
}


- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface {
    self = [super init];
    [self initFields];
        self->cacheableInterfaceFactoryInterface = cacheableInterfaceFactoryInterface;
    return self;
}


// throws Exception
- (void) clear {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (CacheableInterface*) remove:(id)key {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (void) add:(CacheableInterface*)cacheableInterface {
        [self->buffers add:cacheableInterface];
}


// throws Exception
- (void) addArray:(CacheableInterface**)cacheableInterfaces {
        for (int32_t index = 0; index < java_array_length(cacheableInterfaces); index++) {
            [self->buffers add:cacheableInterfaces[index]];
        }
}

@end

