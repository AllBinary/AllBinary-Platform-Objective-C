// Generated Code Do Not Modify
#include "org/allbinary/animation/NullIndexedAnimationFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/NullIndexedAnimationInner.h"
#include "org/allbinary/animation/Animation.h"


IndexedAnimation** NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAY;
static NullIndexedAnimationFactory* NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORY;

void NullIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_ARRAY = ((IndexedAnimation**) java_array_new(sizeof(IndexedAnimation*), 0));
    NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORY = [((NullIndexedAnimationFactory*) [NullIndexedAnimationFactory alloc]) init];
}

@implementation NullIndexedAnimationFactory

- (void) initFields {
    self->NULL_ANIMATION = [((NullIndexedAnimationInner*) [NullIndexedAnimationInner alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NullIndexedAnimationFactory*) getFactoryInstance {
        return (NullIndexedAnimationFactory_staticInit(), NullIndexedAnimationFactory_NULL_INDEXED_ANIMATION_FACTORY);
}


// throws Exception
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

