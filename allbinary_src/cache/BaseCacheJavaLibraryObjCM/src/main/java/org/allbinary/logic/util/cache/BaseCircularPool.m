// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/BaseCircularPool.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/logic/util/cache/AllBinaryObjectFactoryInterface.h"



void BaseCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseCircularPool

- (void) initFields {
    self->circularIndexUtil = (CircularIndexUtil_staticInit(), CircularIndexUtil_NULL_CIRCULAR_INDEX_UTIL);
    self->OBJECT_ARRAY = [NullUtil getInstance]->NULL_OBJECT_ARRAY;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
// synchronized
- (id) getNextInstance {
        id anyType = self->OBJECT_ARRAY[[self->circularIndexUtil getIndex]];
        [self->circularIndexUtil next];
        return anyType;
}


- (void) init_:(AllBinaryObjectFactoryInterface*)allBinaryObjectFactoryInterface {
        [self->circularIndexUtil setIndex:0];
        int32_t size = [self->circularIndexUtil getSize];
        for (int32_t index = 0; index < size; index++) {
            self->OBJECT_ARRAY[index] = [allBinaryObjectFactoryInterface getInstance];
        }
}


// throws Exception
- (id) getInstance:(int32_t)index {
        return self->OBJECT_ARRAY[index];
}

@end

