// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/image/ImageArrayAnimation.h"
#include "org/allbinary/animation/image/AdjustedImageArrayAnimation.h"



void ImageArrayAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayAnimationFactory

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
    
    
}


- (instancetype) init:(Image**)imageArray :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->imageArray = imageArray;
        self->animationBehaviorFactory = animationBehaviorFactory;
        self->dx = dx;
        self->dy = dy;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        if (self->dx != 0 || self->dy != 0) {
            return ((AdjustedImageArrayAnimation*) [((AdjustedImageArrayAnimation*) [AdjustedImageArrayAnimation alloc]) init:self->imageArray :self->dx :self->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((ImageArrayAnimation*) [((ImageArrayAnimation*) [ImageArrayAnimation alloc]) init:self->imageArray :[AnimationBehavior getInstance]]);
        }
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

