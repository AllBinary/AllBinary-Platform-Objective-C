// Generated Code Do Not Modify
#include "org/allbinary/animation/image/RightToLeftImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/RightToLeftImageAnimation.h"
#include "org/allbinary/animation/image/AdjustedRightToLeftImageAnimation.h"



void RightToLeftImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RightToLeftImageAnimationFactory


- (instancetype) init:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :[image getWidth] :[image getHeight] :dx :dy :animationBehaviorFactory];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            [self->animationFactoryImageScaleUtil processAdjust:self];
            return ((AdjustedRightToLeftImageAnimation*) [((AdjustedRightToLeftImageAnimation*) [AdjustedRightToLeftImageAnimation alloc]) init:scaledImage :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((RightToLeftImageAnimation*) [((RightToLeftImageAnimation*) [RightToLeftImageAnimation alloc]) init:scaledImage :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
}

@end

