// Generated Code Do Not Modify
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"


static BasicHudFactory* BasicHudFactory_instance;

void BasicHudFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicHudFactory_instance = [((BasicHudFactory*) [BasicHudFactory alloc]) init];
}

@implementation BasicHudFactory

- (void) initFields {
    self->DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently";
    self->VERTICAL = 0;
    self->HORIZONTAL = 1;
    self->BOTTOMLEFT = 0;
    self->BOTTOMRIGHT = 1;
    self->TOPLEFT = 2;
    self->TOPRIGHT = 3;
    self->BOTTOMCENTER = 4;
    self->TOPCENTER = 5;
    self->ABSOLUTE = 6;
}


+ (BasicHudFactory*) getInstance {
        return (BasicHudFactory_staticInit(), BasicHudFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

