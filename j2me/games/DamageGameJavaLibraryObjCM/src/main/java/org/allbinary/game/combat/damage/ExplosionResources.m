// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/ExplosionResources.h"


static ExplosionResources* ExplosionResources_instance;

void ExplosionResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ExplosionResources_instance = ((ExplosionResources*) [((ExplosionResources*) [ExplosionResources alloc]) init]);
}

@implementation ExplosionResources

- (void) initFields {
    self->EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png";
    self->EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png";
    self->HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png";
    self->THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png";
}


+ (ExplosionResources*) getInstance {
        return (ExplosionResources_staticInit(), ExplosionResources_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

