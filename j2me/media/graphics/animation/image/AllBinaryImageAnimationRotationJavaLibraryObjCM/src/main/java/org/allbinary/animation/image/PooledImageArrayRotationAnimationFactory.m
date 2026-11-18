// Generated Code Do Not Modify
#include "org/allbinary/animation/image/PooledImageArrayRotationAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/media/image/ImageToRotationImageArrayUtil.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"



void PooledImageArrayRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PooledImageArrayRotationAnimationFactory

- (void) initFields {
    self->allBinaryImageRotationAnimationInfo = [NullUtil getInstance]->NULL_OBJECT;
    
}


// throws Exception
+ (PooledImageArrayRotationAnimationFactory*) createFactory:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        int32_t totalAngle = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
        int32_t angleIncrement = (totalAngle / [[GameConfigurationCentral getInstance] getGameControlFidelity]);
        return [((PooledImageArrayRotationAnimationFactory*) [PooledImageArrayRotationAnimationFactory alloc]) init:image :[image getWidth] :[image getHeight] :-([image getWidth] >> 2) :-([image getHeight] >> 2) :angleIncrement :animationBehaviorFactory];
}


// throws Exception
+ (PooledImageArrayRotationAnimationFactory*) createDXY:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        int32_t totalAngle = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
        int32_t angleIncrement = (totalAngle / [[GameConfigurationCentral getInstance] getGameControlFidelity]);
        return [((PooledImageArrayRotationAnimationFactory*) [PooledImageArrayRotationAnimationFactory alloc]) init:image :[image getWidth] :[image getHeight] :dx :dy :angleIncrement :animationBehaviorFactory];
}


- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(int32_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->animationBehaviorFactory = animationBehaviorFactory;
        int32_t totalAngle = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
        Image** imageArray = [[ImageToRotationImageArrayUtil getInstance] generate:image :angleIncrement :totalAngle];
        self->allBinaryImageRotationAnimationInfo = [((ImageArrayRotationAnimationInfo*) [ImageArrayRotationAnimationInfo alloc]) init:imageArray :angleIncrement :totalAngle :dx :dy];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [AdjustedImageArrayRotationAnimation createAdjustedImageArrayRotationAnimationInfo:self->allBinaryImageRotationAnimationInfo :[self->animationBehaviorFactory getOrCreateInstance]];
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

