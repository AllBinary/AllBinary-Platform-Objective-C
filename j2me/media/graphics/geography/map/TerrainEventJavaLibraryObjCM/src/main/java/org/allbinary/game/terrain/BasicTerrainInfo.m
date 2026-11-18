// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"


BasicTerrainInfo* BasicTerrainInfo_NULL_BASIC_TERRAIN_INFO;

void BasicTerrainInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicTerrainInfo_NULL_BASIC_TERRAIN_INFO = [((BasicTerrainInfo*) [BasicTerrainInfo alloc]) init:[AngleFactory getInstance]->NOT_ANGLE];
}

@implementation BasicTerrainInfo

- (void) initFields {
    
}


- (instancetype) init:(Angle*)angle {
    self = [super init];
    [self initFields];
        self->angle = angle;
    return self;
}


- (Angle*) getAngle {
        return self->angle;
}


- (void) setAngle:(Angle*)angle {
        self->angle = angle;
}

@end

