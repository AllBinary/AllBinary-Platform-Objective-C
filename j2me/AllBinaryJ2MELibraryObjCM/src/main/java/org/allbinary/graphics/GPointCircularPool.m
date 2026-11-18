// Generated Code Do Not Modify
#include "org/allbinary/graphics/GPointCircularPool.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/graphics/CustomGPoint.h"



void GPointCircularPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GPointCircularPool


- (instancetype) init:(int32_t)size {
    self = [super init];
        self->circularIndexUtil = [CircularIndexUtil createInstance:size];
        self->OBJECT_ARRAY = ((id*) java_array_new(sizeof(id), size));
        for (int32_t index = size - 1; index >= 0; index--) {
            self->OBJECT_ARRAY[index] = [CustomGPoint getInstance3:0 :0];
        }
    return self;
}

@end

