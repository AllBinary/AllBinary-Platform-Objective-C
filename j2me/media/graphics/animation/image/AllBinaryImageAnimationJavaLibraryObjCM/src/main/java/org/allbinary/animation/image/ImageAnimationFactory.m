// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/ImageAnimation.h"
#include "org/allbinary/animation/image/AdjustedImageAnimation.h"



void ImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageAnimationFactory


// throws Exception
+ (ImageAnimationFactory*) createFactory:(Image*)image {
        return [((ImageAnimationFactory*) [ImageAnimationFactory alloc]) init:image :[image getWidth] :[image getHeight] :0 :0 :[AnimationBehaviorFactory getInstance]];
}


- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :width :height :dx :dy :animationBehaviorFactory];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        OpenGLUtil* openGLUtil = [OpenGLUtil getInstance];
        scaledImage = [openGLUtil addImage:scaledImage];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            [self->animationFactoryImageScaleUtil processAdjust:self];
            return [((AdjustedImageAnimation*) [AdjustedImageAnimation alloc]) init:scaledImage :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]];
        } else {
            return [((ImageAnimation*) [ImageAnimation alloc]) init:scaledImage :[self->animationBehaviorFactory getOrCreateInstance]];
        }
}

@end

