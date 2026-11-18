// Generated Code Do Not Modify
#include "org/allbinary/animation/SingletonAnimationInterfaceFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/Animation.h"



void SingletonAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingletonAnimationInterfaceFactory

- (void) initFields {
    
}


- (instancetype) init:(Animation*)animationInterface {
    self = [super init];
    [self initFields];
        self->animationInterface = animationInterface;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return self->animationInterface;
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return self->animationInterface;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

