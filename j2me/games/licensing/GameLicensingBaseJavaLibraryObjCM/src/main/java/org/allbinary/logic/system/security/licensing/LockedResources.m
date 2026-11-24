// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LockedResources.h"


static LockedResources* LockedResources_instance;

void LockedResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LockedResources_instance = ((LockedResources*) [((LockedResources*) [LockedResources alloc]) init]);
}

@implementation LockedResources

- (void) initFields {
    self->LOCKED_DEMO_GAME_FEATURE_RESOURCE = "/locked_demo_game_feature_64_by_64.png";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LockedResources*) getInstance {
        return (LockedResources_staticInit(), LockedResources_instance);
}

@end

