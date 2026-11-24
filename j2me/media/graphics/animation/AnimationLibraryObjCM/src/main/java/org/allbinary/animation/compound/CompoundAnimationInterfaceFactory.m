// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/CompoundAnimationInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif



void CompoundAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompoundAnimationInterfaceFactory

- (void) initFields {
    
    
}


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArray;
        self->animationBehaviorFactory = animationBehaviorFactory;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        int32_t size = java_array_length(self->basicAnimationInterfaceFactoryInterfaceArrayP);
        Animation** animationInterfaceArray = [self createArray:size];
        for (int32_t index = 0; index < size; index++) {
            animationInterfaceArray[index] = [((id<AnimationInterfaceFactoryInterface>) self->basicAnimationInterfaceFactoryInterfaceArrayP[index]) getInstance:instanceId];
        }
        return [self createAnimation:animationInterfaceArray];
}


- (Animation**) createArray:(int32_t)size {
        return [NullAnimationFactory getFactoryInstance]->EMPTY_ARRAY;
}


- (Animation*) createAnimation:(Animation**)animationInterfaceArray {
        return [[NullAnimationFactory getFactoryInstance] getInstance:0];
}


- (AnimationInterfaceFactoryInterface**) getBasicAnimationInterfaceFactoryInterfaceArray {
        return self->basicAnimationInterfaceFactoryInterfaceArrayP;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
        int32_t size = java_array_length(self->basicAnimationInterfaceFactoryInterfaceArrayP);
        for (int32_t index = 0; index < size; index++) {
            [((id<AnimationInterfaceFactoryInterface>) self->basicAnimationInterfaceFactoryInterfaceArrayP[index]) setInitialScale:scaleProperties];
        }
}

@end

