// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/points/PointsResources.h"


static PointsResources* PointsResources_SINGLETON;

void PointsResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PointsResources_SINGLETON = [((PointsResources*) [PointsResources alloc]) init];
}

@implementation PointsResources

- (void) initFields {
    self->RESOURCE = "points_drop_20_by_20.png";
    self->RESOURCE_2 = "points_2_drop_20_by_20.png";
    self->RESOURCE_3 = "points_3_drop_20_by_20.png";
    self->RESOURCE_4 = "points_4_drop_20_by_20.png";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PointsResources*) getInstance {
        return (PointsResources_staticInit(), PointsResources_SINGLETON);
}

@end

