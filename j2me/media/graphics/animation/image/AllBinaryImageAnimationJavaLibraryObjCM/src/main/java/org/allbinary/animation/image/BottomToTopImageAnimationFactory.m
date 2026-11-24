// Generated Code Do Not Modify
#include "org/allbinary/animation/image/BottomToTopImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/BottomToTopImageAnimation.h"



void BottomToTopImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BottomToTopImageAnimationFactory


- (instancetype) init:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :[image getWidth] :[image getHeight] :0 :0 :animationBehaviorFactory];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        return ((BottomToTopImageAnimation*) [((BottomToTopImageAnimation*) [BottomToTopImageAnimation alloc]) init:scaledImage :[self->animationBehaviorFactory getOrCreateInstance]]);
}

@end

