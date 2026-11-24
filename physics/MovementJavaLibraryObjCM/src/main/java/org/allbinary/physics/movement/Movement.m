// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/Movement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/physics/movement/MovementInterface.h"



void Movement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Movement


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) initMethod:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle {
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
}


- (void) stop {
}

@end

