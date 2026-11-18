// Generated Code Do Not Modify
#include "org/allbinary/animation/image/TopToBottomImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/TopToBottomImageAnimation.h"



void TopToBottomImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TopToBottomImageAnimationFactory


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :sequenceArray :[image getWidth] :[image getHeight] :0 :0 :animationBehaviorFactory];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        return [((TopToBottomImageAnimation*) [TopToBottomImageAnimation alloc]) init:scaledImage :[self getSequenceArray] :[self->animationBehaviorFactory getOrCreateInstance]];
}

@end

