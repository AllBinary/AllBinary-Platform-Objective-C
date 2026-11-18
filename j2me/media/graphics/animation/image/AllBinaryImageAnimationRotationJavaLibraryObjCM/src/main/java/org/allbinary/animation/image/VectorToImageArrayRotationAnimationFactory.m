// Generated Code Do Not Modify
#include "org/allbinary/animation/image/VectorToImageArrayRotationAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/VectorAnimation.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/image/AnimationFrameToImageUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/media/image/ImageToRotationImageArrayUtil.h"
#include "org/allbinary/vector/VectorInfo.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"



void VectorToImageArrayRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorToImageArrayRotationAnimationFactory

- (void) initFields {
    self->imageArray = (NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY);
    self->angleIncrement = 0;
}


- (instancetype) init:(VectorInfo*)vectorInfo :(BasicColor*)basicColor :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:[[AnimationFrameToImageUtil getInstance] getInstanceTranslate:[vectorInfo getWidth] :[vectorInfo getHeight] :[VectorAnimation createVectorAnimation:[vectorInfo getPoints] :basicColor :[animationBehaviorFactory getOrCreateInstance]]] :[PrimitiveIntUtil getArrayInstance] :0 :0 :0 :0 :animationBehaviorFactory];
        [self initFields];
        [self init_];
    return self;
}


// throws Exception
- (void) init_ {
        AngleFactory* angleFactory = [AngleFactory getInstance];
        self->angleIncrement = ((int32_t) angleFactory->TOTAL_ANGLE) / [[GameConfigurationCentral getInstance] getGameControlFidelity];
        self->imageArray = [[ImageToRotationImageArrayUtil getInstance] generate:[self getImage] :[self getAngleIncrement] :((int32_t) angleFactory->TOTAL_ANGLE)];
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            return [((AdjustedImageArrayRotationAnimation*) [AdjustedImageArrayRotationAnimation alloc]) init:self->imageArray :[AngleInfo getInstance:((int16_t) [self getAngleIncrement])] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]];
        } else {
            return [AdjustedImageArrayRotationAnimation createAnimation:self->imageArray :[AngleInfo getInstance:((int16_t) self->angleIncrement)] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) :[self->animationBehaviorFactory getOrCreateInstance]];
        }
}


- (int32_t) getAngleIncrement {
        return self->angleIncrement;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

