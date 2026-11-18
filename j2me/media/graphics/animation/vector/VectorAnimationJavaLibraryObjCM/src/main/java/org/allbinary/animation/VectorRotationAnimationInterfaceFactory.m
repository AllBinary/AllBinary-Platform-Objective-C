// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorRotationAnimationInterfaceFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/VectorRotationAnimation.h"
#include "org/allbinary/animation/Animation.h"



void VectorRotationAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorRotationAnimationInterfaceFactory

- (void) initFields {
    self->currentPoints = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
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
        return [((VectorRotationAnimation*) [VectorRotationAnimation alloc]) init:self->currentPoints :[self getBasicColorP] :[self->animationBehaviorFactory getOrCreateInstance]];
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

