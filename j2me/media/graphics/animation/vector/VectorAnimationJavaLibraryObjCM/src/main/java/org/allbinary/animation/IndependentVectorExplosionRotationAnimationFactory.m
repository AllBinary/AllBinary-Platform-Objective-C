// Generated Code Do Not Modify
#include "org/allbinary/animation/IndependentVectorExplosionRotationAnimationFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/vector/VectorInfo.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/VectorAnimationFactoryInterface.h"
#include "org/allbinary/animation/VectorRotationGenerator.h"
#include "org/allbinary/animation/VectorExplosionGenerator.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/Animation.h"



void IndependentVectorExplosionRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndependentVectorExplosionRotationAnimationFactory

- (void) initFields {
    self->framePoints = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
    
    
    
    self->vectorExplosionGenerator = [VectorExplosionGenerator getInstance];
}


- (instancetype) init:(VectorInfo*)vectorInfo :(BasicColor*)basicColor :(VectorAnimationFactoryInterface*)vectorAnimationFactoryInterface {
    self = [super init];
    [self initFields];
        self->vectorInfo = vectorInfo;
        self->basicColor = basicColor;
        self->vectorAnimationFactoryInterface = vectorAnimationFactoryInterface;
        [self init_];
    return self;
}


// throws Exception
- (void) init_ {
        self->framePoints = [[VectorRotationGenerator getInstance] getInstance:self->vectorInfo];
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        int32_t frame = 0;
        if (animationInterface != nil) {
            IndexedAnimation* rotationAnimationInterface = ((IndexedAnimation*) animationInterface);
            frame = [rotationAnimationInterface getFrame];
        }
        int32_t*** points = [self->vectorExplosionGenerator getInstance:self->framePoints[frame] :6 :self->vectorExplosionGenerator->ROTATION];
        return [self->vectorAnimationFactoryInterface getInstance:points :self->basicColor];
}

@end

