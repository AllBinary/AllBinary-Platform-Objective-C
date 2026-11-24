// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/IndexedBasicArrayListCache.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/util/cache/BaseBasicArrayListCache.h"
#include "org/allbinary/logic/util/cache/CacheInterface.h"
#include "org/allbinary/logic/util/cache/CacheableInterface.h"



void IndexedBasicArrayListCache_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndexedBasicArrayListCache

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->size = 0;
    self->index = 0;
}


// throws Exception
+ (IndexedBasicArrayListCache*) createCache:(int32_t)size {
        IndexedBasicArrayListCache* indexedBasicArrayListCache = ((IndexedBasicArrayListCache*) [((IndexedBasicArrayListCache*) [IndexedBasicArrayListCache alloc]) init]);
        [indexedBasicArrayListCache initMethod:size];
        return indexedBasicArrayListCache;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)size {
        if (self->size < size) {
            [self->list ensureCapacity:size];
            for (int32_t index = size - 1; index >= self->size; index--) {
                [self addDefault];
            }
            self->size = size;
        }
}


- (id) getAt:(int32_t)index {
        return self->list->objectArray[index];
}


// throws Exception
- (void) addDefault {
}


// throws Exception
- (void) addObject:(id)anyType {
        [self->list add:anyType];
}


// throws Exception
- (void) add:(CacheableInterface*)cacheableInterface {
        [self->list add:cacheableInterface];
}


// throws Exception
- (void) addArray:(CacheableInterface**)cacheableInterfaces {
        java_throw(java_exception_new("Exception", "No Imple"));
}


- (void) clear {
        self->index = 0;
}

@end

