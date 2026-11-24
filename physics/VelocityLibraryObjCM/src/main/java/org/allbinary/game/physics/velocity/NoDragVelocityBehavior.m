// Generated Code Do Not Modify
#include "org/allbinary/game/physics/velocity/NoDragVelocityBehavior.h"
#include "org/allbinary/game/physics/velocity/VelocityBehaviorBase.h"


NoDragVelocityBehavior* NoDragVelocityBehavior_instance;

void NoDragVelocityBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoDragVelocityBehavior_instance = ((NoDragVelocityBehavior*) [((NoDragVelocityBehavior*) [NoDragVelocityBehavior alloc]) init]);
}

@implementation NoDragVelocityBehavior

- (instancetype) init {
    self = [super init];
    return self;
}

@end

