// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/SimultaneousCompoundIndexAnimationInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation.h"



void SimultaneousCompoundIndexAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimultaneousCompoundIndexAnimationInterfaceFactory

- (void) initFields {
    
    
}


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
        self->animationBehaviorFactory = animationBehaviorFactory;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        int32_t size = java_array_length(self->basicAnimationInterfaceFactoryInterfaceArray);
        IndexedAnimation** animationInterfaceArray = ((IndexedAnimation**) java_array_new(sizeof(IndexedAnimation*), size));
        for (int32_t index = 0; index < size; index++) {
            animationInterfaceArray[index] = ((IndexedAnimation*) [self->basicAnimationInterfaceFactoryInterfaceArray[index] getInstance:instanceId]);
        }
        return [self getOrCreate:animationInterfaceArray];
}


- (Animation*) getOrCreate:(IndexedAnimation**)animationInterfaceArray {
        return [((SimultaneousCompoundIndexAnimation*) [SimultaneousCompoundIndexAnimation alloc]) init:animationInterfaceArray :[self->animationBehaviorFactory getOrCreateInstance]];
}


- (AnimationInterfaceFactoryInterface**) getBasicAnimationInterfaceFactoryInterfaceArray {
        return self->basicAnimationInterfaceFactoryInterfaceArray;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

