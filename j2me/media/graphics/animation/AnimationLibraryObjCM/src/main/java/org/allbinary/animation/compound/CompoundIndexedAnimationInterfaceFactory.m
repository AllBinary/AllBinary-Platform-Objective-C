// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/CompoundIndexedAnimationInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.h"
#include "org/allbinary/animation/compound/CompoundIndexedAnimation.h"



void CompoundIndexedAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompoundIndexedAnimationInterfaceFactory


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:basicAnimationInterfaceFactoryInterfaceArray :animationBehaviorFactory];
    return self;
}


- (Animation**) createArray:(int32_t)size {
        return ((Animation**) java_array_new(sizeof(Animation*), size));
}


- (Animation*) createAnimation:(Animation**)animationArray {
        return [((CompoundIndexedAnimation*) [CompoundIndexedAnimation alloc]) init:animationArray :[self->animationBehaviorFactory getOrCreateInstance]];
}

@end

