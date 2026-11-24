// Generated Code Do Not Modify
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.h"



void AllBinaryEventCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryEventCircularPool


- (instancetype) init:(int32_t)max {
    self = [super init];
        self->OBJECT_ARRAY = ((id*) java_array_new(sizeof(id), max));
        self->circularIndexUtil = [CircularIndexUtil createInstance:max];
    return self;
}


- (void) initAllBinaryEventCircularPool:(AllBinaryEventObjectFactoryInterface*)allBinaryEventObjectFactoryInterface {
        [self->circularIndexUtil setIndex:0];
        int32_t size = [self->circularIndexUtil getSize];
        for (int32_t index = 0; index < size; index++) {
            self->OBJECT_ARRAY[index] = [((id<AllBinaryEventObjectFactoryInterface>) allBinaryEventObjectFactoryInterface) getInstance];
        }
}

@end

