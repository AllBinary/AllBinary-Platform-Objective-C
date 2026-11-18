// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/DisposalUtil.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"



void ImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageAnimation

- (void) initFields {
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image*)image :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->image = image;
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) nextFrame {
}


- (void) previousFrame {
}


- (void) setFrame:(int32_t)index {
}


- (int32_t) getFrame {
        return 0;
}


- (int32_t) getSize {
        return 1;
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawImage:self->image :x :y :self->anchor];
}


- (Image*) getImage {
        return self->image;
}


// throws Exception
- (void) close {
        [[DisposalUtil getInstance] disposeImage:self->image];
}


// throws Throwable
- (void) finalize {
        [[DisposalUtil getInstance] disposeImage:self->image];
}

@end

