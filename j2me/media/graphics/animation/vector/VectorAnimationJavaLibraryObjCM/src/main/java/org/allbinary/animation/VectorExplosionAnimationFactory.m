// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorExplosionAnimationFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/VectorExplosionGenerator.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/VectorAnimationInterface.h"
#include "org/allbinary/animation/VectorRotationAnimation.h"
#include "org/allbinary/animation/Animation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void VectorExplosionAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorExplosionAnimationFactory

- (void) initFields {
    self->vectorExplosionGenerator = [VectorExplosionGenerator getInstance];
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    
}


- (instancetype) init:(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->animationBehaviorFactory = animationBehaviorFactory;
        [self setBasicColorP:basicColor];
    return self;
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        VectorAnimationInterface* vectorRotationAnimationInterface = ((VectorAnimationInterface*) animationInterface);
        int32_t frame = [((id<VectorAnimationInterface>) vectorRotationAnimationInterface) getFrame];
        int32_t** framePoints = [((id<VectorAnimationInterface>) vectorRotationAnimationInterface) getPoints:frame];
        int32_t*** points = [self->vectorExplosionGenerator getInstance:framePoints :6 :self->vectorExplosionGenerator->ROTATION];
        return ((VectorRotationAnimation*) [((VectorRotationAnimation*) [VectorRotationAnimation alloc]) init:points :[self getBasicColorP] :[self->animationBehaviorFactory getOrCreateInstance]]);
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}

@end

