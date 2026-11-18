// Generated Code Do Not Modify
#include "org/allbinary/game/graphics/hud/HudGraphicsPosition.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"


HudGraphicsPosition* HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITION;

void HudGraphicsPosition_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITION = [((HudGraphicsPosition*) [HudGraphicsPosition alloc]) init:[PointFactory getInstance]->ZERO_ZERO :9];
}

@implementation HudGraphicsPosition

- (void) initFields {
    self->anchor = 0;
    self->point = [PointFactory getInstance]->ZERO_ZERO;
}


- (instancetype) init:(GPoint*)point :(int32_t)anchor {
    self = [super init];
    [self initFields];
        [self setAnchor:anchor];
        [self setPoint:point];
    return self;
}


- (int32_t) getAnchor {
        return self->anchor;
}


- (void) setAnchor:(int32_t)anchor {
        self->anchor = anchor;
}


- (GPoint*) getPoint {
        return self->point;
}


- (void) setPoint:(GPoint*)point {
        self->point = point;
}

@end

