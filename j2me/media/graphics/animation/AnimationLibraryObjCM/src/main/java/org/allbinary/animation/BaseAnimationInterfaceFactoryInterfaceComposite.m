// Generated Code Do Not Modify
#include "org/allbinary/animation/BaseAnimationInterfaceFactoryInterfaceComposite.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/Animation.h"



void BaseAnimationInterfaceFactoryInterfaceComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseAnimationInterfaceFactoryInterfaceComposite

- (void) initFields {
    
}


- (instancetype) init:(BasicAnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray {
    self = [super init];
    [self initFields];
        self->basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [[NullAnimationFactory getFactoryInstance] getInstance:0];
}


- (BasicAnimationInterfaceFactoryInterface**) getBasicAnimationInterfaceFactoryInterfaceArray {
        return self->basicAnimationInterfaceFactoryInterfaceArray;
}


- (void) setBasicAnimationInterfaceFactoryInterfaceArray:(BasicAnimationInterfaceFactoryInterface**)basicAnimationInterfaceFactoryInterfaceArray {
        self->basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

