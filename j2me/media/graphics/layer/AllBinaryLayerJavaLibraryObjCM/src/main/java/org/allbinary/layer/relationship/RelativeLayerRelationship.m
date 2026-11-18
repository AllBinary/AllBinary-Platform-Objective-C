// Generated Code Do Not Modify
#include "org/allbinary/layer/relationship/RelativeLayerRelationship.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/BasicArrayList.h"



void RelativeLayerRelationship_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RelativeLayerRelationship

- (void) initFields {
    self->layer = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
}


- (instancetype) init:(AllBinaryLayer*)layer :(GPoint*)point :(BasicArrayList*)typesAllowedList {
        self = [super init:point :typesAllowedList];
        [self initFields];
        self->layer = layer;
    return self;
}


- (int32_t) getX {
        return [self->layer getXP] + [super getX];
}


- (int32_t) getY {
        return [self->layer getYP] + [super getY];
}


- (int32_t) getZ {
        return [self->layer getZP] + [super getZ];
}

@end

