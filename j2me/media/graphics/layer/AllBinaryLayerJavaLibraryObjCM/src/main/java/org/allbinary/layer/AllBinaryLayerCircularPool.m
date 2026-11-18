// Generated Code Do Not Modify
#include "org/allbinary/layer/AllBinaryLayerCircularPool.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"



void AllBinaryLayerCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryLayerCircularPool


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) initAllBinaryLayerCircularPool:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total {
        self->circularIndexUtil = [CircularIndexUtil createInstance:total];
        self->OBJECT_ARRAY = ((id*) java_array_new(sizeof(id), total));
        for (int32_t localIndex = 0; localIndex < total; localIndex++) {
            self->OBJECT_ARRAY[localIndex] = [allbinaryLayerFactoryInterface getInstance];
        }
}

@end

