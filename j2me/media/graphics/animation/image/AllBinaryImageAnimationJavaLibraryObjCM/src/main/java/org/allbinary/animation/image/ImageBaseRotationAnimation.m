// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageBaseRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/DisposalUtil.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#if __has_include("org/allbinary/animation/image/AngleIncrementInfo.h")
#include "org/allbinary/animation/image/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/AngleIncrementInfo.h")
#include "org/allbinary/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/graphics/AngleIncrementInfo.h")
#include "org/allbinary/graphics/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/math/AngleIncrementInfo.h")
#include "org/allbinary/logic/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleIncrementInfo.h")
#include "org/allbinary/util/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/DisposalUtil.h")
#include "org/allbinary/DisposalUtil.h"
#endif
#if __has_include("org/allbinary/DisposalUtil.h")
#include "org/allbinary/DisposalUtil.h"
#endif



void ImageBaseRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageBaseRotationAnimation

- (void) initFields {
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image*)image :(AngleInfo*)angleInfo :(int16_t)totalAngle :(AnimationBehavior*)animationBehavior {
        self = [super init:angleInfo :[CircularIndexUtil createInstance:totalAngle / [[angleInfo getAngleIncrementInfo] getAngleIncrement]] :animationBehavior];
        [self initFields];
        self->image = image;
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
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


- (int32_t) getWidth {
        return [self->image getWidth];
}


- (int32_t) getHeight {
        return [self->image getHeight];
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

