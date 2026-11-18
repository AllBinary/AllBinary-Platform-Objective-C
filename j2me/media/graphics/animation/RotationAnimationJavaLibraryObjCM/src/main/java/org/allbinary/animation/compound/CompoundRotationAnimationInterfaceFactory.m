// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/CompoundRotationAnimationInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.h"
#include "org/allbinary/animation/compound/CompoundRotationAnimation.h"



void CompoundRotationAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompoundRotationAnimationInterfaceFactory


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:basicAnimationInterfaceFactoryInterfaceArray :animationBehaviorFactory];
        if (animationBehaviorFactory == [AnimationBehaviorFactory getInstance]) {
            [ForcedLogUtil log:"Using default AnimationBehaviorFactory with IndexedAnimationFactory" :self];
        }
    return self;
}


- (Animation**) createArray:(int32_t)size {
        return ((RotationAnimation**) java_array_new(sizeof(RotationAnimation*), size));
}


- (Animation*) createAnimation:(Animation**)animationInterfaceArray {
        return [((CompoundRotationAnimation*) [CompoundRotationAnimation alloc]) init:((RotationAnimation**) animationInterfaceArray) :[self->animationBehaviorFactory getOrCreateInstance]];
}

@end

