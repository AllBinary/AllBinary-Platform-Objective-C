// Generated Code Do Not Modify
#include "org/allbinary/animation/image/LeftToRightImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/LeftToRightImageAnimation.h"
#include "org/allbinary/animation/image/AdjustedLeftToRightImageAnimation.h"



void LeftToRightImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LeftToRightImageAnimationFactory


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :sequenceArray :[image getWidth] :[image getHeight] :dx :dy :animationBehaviorFactory];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            [self->animationFactoryImageScaleUtil processAdjust:self];
            return ((AdjustedLeftToRightImageAnimation*) [((AdjustedLeftToRightImageAnimation*) [AdjustedLeftToRightImageAnimation alloc]) init:scaledImage :[self getSequenceArray] :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((LeftToRightImageAnimation*) [((LeftToRightImageAnimation*) [LeftToRightImageAnimation alloc]) init:scaledImage :[self getSequenceArray] :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
}

@end

