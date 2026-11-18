// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayerFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/game/ag/layer/pickup/points/PointsLayer.h"



void PointsLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PointsLayerFactory

- (void) initFields {
    
}


- (instancetype) init:(int32_t)points {
    self = [super init];
    [self initFields];
        self->points = points;
    return self;
}


// throws Exception
- (AllBinaryLayer*) getInstance {
        return [((PointsLayer*) [PointsLayer alloc]) init:self->points];
}

@end

