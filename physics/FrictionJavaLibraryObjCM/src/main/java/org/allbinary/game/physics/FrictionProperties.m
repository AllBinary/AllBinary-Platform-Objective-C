// Generated Code Do Not Modify
#include "org/allbinary/game/physics/FrictionProperties.h"
#include "org/allbinary/game/physics/friction/FrictionData.h"
#include "org/allbinary/game/physics/velocity/DragVelocityBehavior.h"
#include "org/allbinary/game/physics/velocity/VelocityProperties.h"



void FrictionProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FrictionProperties


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) friction:(VelocityProperties*)velocityProperties :(int32_t)nominator {
        [(DragVelocityBehavior_staticInit(), DragVelocityBehavior_instance) reduce:velocityProperties :nominator :[FrictionData getFrictionDenominator]];
}

@end

