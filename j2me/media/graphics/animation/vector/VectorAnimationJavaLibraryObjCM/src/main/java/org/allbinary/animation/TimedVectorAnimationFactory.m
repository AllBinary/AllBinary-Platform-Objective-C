// Generated Code Do Not Modify
#include "org/allbinary/animation/TimedVectorAnimationFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/VectorAnimationFactoryInterface.h"
#include "org/allbinary/animation/TimedVectorAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/VectorAnimation.h"



void TimedVectorAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TimedVectorAnimationFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (VectorAnimation*) getInstance:(int32_t***)points :(BasicColor*)basicColor {
        return [((TimedVectorAnimation*) [TimedVectorAnimation alloc]) init:points :basicColor :[AnimationBehavior getInstance]];
}

@end

