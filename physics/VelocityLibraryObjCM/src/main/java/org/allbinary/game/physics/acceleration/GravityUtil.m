// Generated Code Do Not Modify
#include "org/allbinary/game/physics/acceleration/GravityUtil.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#if __has_include("org/allbinary/game/physics/acceleration/BasicDecimal.h")
#include "org/allbinary/game/physics/acceleration/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif


static GravityUtil* GravityUtil_instance;

void GravityUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GravityUtil_instance = [((GravityUtil*) [GravityUtil alloc]) init];
}

@implementation GravityUtil

- (void) initFields {
    self->GAME_GRAVITY_VELOCITY = 1800;
    self->MAX_GAME_VELOCITY = 18000;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GravityUtil*) getInstance {
        return (GravityUtil_staticInit(), GravityUtil_instance);
}


- (void) process:(BasicVelocityProperties*)velocityProperties :(int32_t)customGravity {
        [[velocityProperties getVelocityYBasicDecimalP] addint:customGravity];
}

@end

