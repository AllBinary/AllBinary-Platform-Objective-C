// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageRotationAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/ImageBaseRotationAnimation.h"
#include "org/allbinary/animation/image/AdjustedImageBaseRotationAnimation.h"



void ImageRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageRotationAnimationFactory

- (void) initFields {
    
}


- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(int16_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory];
        [self initFields];
        self->angleIncrement = angleIncrement;
        self->animationFactoryInitializationVisitor->dx = dx;
        self->animationFactoryInitializationVisitor->dy = dy;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            [self->animationFactoryImageScaleUtil processAdjust:self];
            return [((AdjustedImageBaseRotationAnimation*) [AdjustedImageBaseRotationAnimation alloc]) init:[self getImage] :[AngleInfo getInstance:self->angleIncrement] :[AngleFactory getInstance]->TOTAL_ANGLE :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]];
        } else {
            return [((ImageBaseRotationAnimation*) [ImageBaseRotationAnimation alloc]) init:[self getImage] :[AngleInfo getInstance:self->angleIncrement] :[AngleFactory getInstance]->TOTAL_ANGLE :[self->animationBehaviorFactory getOrCreateInstance]];
        }
}


- (int16_t) getAngleIncrementP {
        return self->angleIncrement;
}

@end

