// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/HudResources.h"


static HudResources* HudResources_instance;

void HudResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HudResources_instance = [((HudResources*) [HudResources alloc]) init];
}

@implementation HudResources

- (void) initFields {
    self->RESOURCE_LIFE = "/hud_life_10_by_10.png";
    self->RESOURCE_HEALTH = "/hud_health_10_by_10.png";
}


+ (HudResources*) getInstance {
        return (HudResources_staticInit(), HudResources_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

