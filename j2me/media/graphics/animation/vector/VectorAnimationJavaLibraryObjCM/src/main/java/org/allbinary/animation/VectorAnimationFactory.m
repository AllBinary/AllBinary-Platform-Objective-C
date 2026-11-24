// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorAnimationFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/VectorAnimationFactoryInterface.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void VectorAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorAnimationFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (VectorAnimation*) getInstance:(int32_t***)points :(BasicColor*)basicColor {
        return ((VectorAnimation*) [((VectorAnimation*) [VectorAnimation alloc]) init:points :basicColor :[AnimationBehavior getInstance]]);
}

@end

