// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorAnimationInterfaceFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/animation/Animation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void VectorAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorAnimationInterfaceFactory

- (void) initFields {
    
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    
}


- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->currentPoints = currentPoints;
        [self setBasicColorP:basicColor];
        self->animationBehaviorFactory = animationBehaviorFactory;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return ((VectorAnimation*) [((VectorAnimation*) [VectorAnimation alloc]) init:self->currentPoints :[self getBasicColorP] :[self->animationBehaviorFactory getOrCreateInstance]]);
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

