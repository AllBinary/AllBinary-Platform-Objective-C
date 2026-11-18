// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/AutoCompoundRotationAnimationInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.h"
#include "org/allbinary/animation/compound/AutoCompoundRotationAnimation.h"



void AutoCompoundRotationAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AutoCompoundRotationAnimationInterfaceFactory


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:basicAnimationInterfaceFactoryInterfaceArray :animationBehaviorFactory];
    return self;
}


- (Animation**) createArray:(int32_t)size {
        return ((RotationAnimation**) java_array_new(sizeof(RotationAnimation*), size));
}


- (Animation*) createAnimation:(Animation**)animationInterfaceArray {
        return [((AutoCompoundRotationAnimation*) [AutoCompoundRotationAnimation alloc]) init:((RotationAnimation**) animationInterfaceArray) :[self->animationBehaviorFactory getOrCreateInstance]];
}

@end

