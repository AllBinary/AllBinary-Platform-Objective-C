// Generated Code Do Not Modify
#include "org/allbinary/game/physics/velocity/DragVelocityBehavior.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/game/physics/velocity/VelocityBehaviorBase.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"


DragVelocityBehavior* DragVelocityBehavior_instance;

void DragVelocityBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DragVelocityBehavior_instance = [((DragVelocityBehavior*) [DragVelocityBehavior alloc]) init];
}

@implementation DragVelocityBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) reduce:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator {
        if ([[velocityProperties getVelocityXBasicDecimalP] getUnscaled] != 0LL) {
            BasicDecimal* basicDecimal = [velocityProperties getVelocityXBasicDecimalP];
            [basicDecimal multiplyint:nominator];
            [basicDecimal divideint:denominator];
        }
        if ([[velocityProperties getVelocityYBasicDecimalP] getUnscaled] != 0LL) {
            BasicDecimal* basicDecimal = [velocityProperties getVelocityYBasicDecimalP];
            [basicDecimal multiplyint:nominator];
            [basicDecimal divideint:denominator];
        }
}


- (void) reduceX:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator {
        BasicDecimal* basicDecimal = [velocityProperties getVelocityXBasicDecimalP];
        if ([basicDecimal getUnscaled] != 0LL) {
            [basicDecimal multiplyint:nominator];
            [basicDecimal divideint:denominator];
        }
}


- (void) reduceY:(BasicVelocityProperties*)velocityProperties :(int32_t)nominator :(int32_t)denominator {
        if ([[velocityProperties getVelocityYBasicDecimalP] getUnscaled] != 0LL) {
            BasicDecimal* basicDecimal = [velocityProperties getVelocityYBasicDecimalP];
            [basicDecimal multiplyint:nominator];
            [basicDecimal divideint:denominator];
        }
}

@end

