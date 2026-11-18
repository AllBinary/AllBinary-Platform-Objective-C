// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/pickup/life/LifeResources.h"


static LifeResources* LifeResources_SINGLETON;

void LifeResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LifeResources_SINGLETON = [((LifeResources*) [LifeResources alloc]) init];
}

@implementation LifeResources

- (void) initFields {
    self->RESOURCE = "life_drop_20_by_20.png";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LifeResources*) getInstance {
        return (LifeResources_staticInit(), LifeResources_SINGLETON);
}

@end

