// Generated Code Do Not Modify
#include "org/allbinary/animation/AnimationInterfaceFactoryInterfaceComposite.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/Animation.h"



void AnimationInterfaceFactoryInterfaceComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AnimationInterfaceFactoryInterfaceComposite

- (void) initFields {
    
}


- (instancetype) init:(AnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray {
    self = [super init];
    [self initFields];
        self->animationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [[NullAnimationFactory getFactoryInstance] getInstance:0];
}


- (AnimationInterfaceFactoryInterface**) getAnimationInterfaceFactoryInterfaceArray {
        return self->animationInterfaceFactoryInterfaceArray;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

