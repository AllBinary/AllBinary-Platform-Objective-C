// Generated Code Do Not Modify
#include "org/allbinary/animation/NullRotationAnimationFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/animation/NullRotationAnimation2.h"
#include "org/allbinary/animation/Animation.h"


static NullRotationAnimationFactory* NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORY;

void NullRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORY = [((NullRotationAnimationFactory*) [NullRotationAnimationFactory alloc]) init];
}

@implementation NullRotationAnimationFactory

- (void) initFields {
    self->NULL_ROTATION_ANIMATION_ARRAY = ((RotationAnimation**) java_array_new(sizeof(RotationAnimation*), 0));
    self->NULL_ANIMATION = [((NullRotationAnimation2*) [NullRotationAnimation2 alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NullRotationAnimationFactory*) getFactoryInstance {
        return (NullRotationAnimationFactory_staticInit(), NullRotationAnimationFactory_NULL_ROTATION_ANIMATION_FACTORY);
}


- (Animation*) getInstance:(int32_t)instanceId {
        return self->NULL_ANIMATION;
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return self->NULL_ANIMATION;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

