// Generated Code Do Not Modify
#include "org/allbinary/animation/image/TweenedImageAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/DisposalUtil.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#if __has_include("org/allbinary/DisposalUtil.h")
#include "org/allbinary/DisposalUtil.h"
#endif
#if __has_include("org/allbinary/DisposalUtil.h")
#include "org/allbinary/DisposalUtil.h"
#endif



void TweenedImageAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TweenedImageAnimation

- (void) initFields {
    
    
    
    
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image*)image :(int32_t)dx :(int32_t)dy :(int32_t)totalFrames :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->image = image;
        self->dx = dx;
        self->dy = dy;
        self->totalFrames = totalFrames;
        self->circularIndexUtil = [CircularIndexUtil createInstance:self->totalFrames];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) nextFrame {
        [self->circularIndexUtil next];
}


- (void) previousFrame {
        [self->circularIndexUtil previous];
}


- (void) setFrame:(int32_t)index {
        [self->circularIndexUtil setIndex:index];
}


- (int32_t) getFrame {
        return [self->circularIndexUtil getIndex];
}


- (int32_t) getSize {
        return self->totalFrames;
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        int32_t frame = [self getFrame];
        int32_t currentX = self->dx * frame;
        int32_t currentY = self->dy * frame;
        [graphics drawImage:self->image :x + currentX :y + currentY :self->anchor];
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

