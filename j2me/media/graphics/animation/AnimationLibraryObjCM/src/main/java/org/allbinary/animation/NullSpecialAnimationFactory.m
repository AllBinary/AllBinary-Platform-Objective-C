// Generated Code Do Not Modify
#include "org/allbinary/animation/NullSpecialAnimationFactory.h"
#include "org/allbinary/animation/special/SpecialAnimation.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/Animation.h"


static NullSpecialAnimationFactory* NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORY;

void NullSpecialAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORY = [((NullSpecialAnimationFactory*) [NullSpecialAnimationFactory alloc]) init];
}

@implementation NullSpecialAnimationFactory


- (instancetype) init {
    self = [super init];
    return self;
}


+ (NullSpecialAnimationFactory*) getFactoryInstance {
        return (NullSpecialAnimationFactory_staticInit(), NullSpecialAnimationFactory_NULL_SPECIAL_ANIMATION_FACTORY);
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [SpecialAnimation getInstance];
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return [SpecialAnimation getInstance];
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

