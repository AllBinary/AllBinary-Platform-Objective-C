// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageAnimationSingletonInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/image/AnimationFrameToImageUtil.h"
#include "org/allbinary/animation/image/ImageAnimation.h"
#if __has_include("org/allbinary/image/AnimationFrameToImageUtil.h")
#include "org/allbinary/image/AnimationFrameToImageUtil.h"
#endif



void ImageAnimationSingletonInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageAnimationSingletonInterfaceFactory


- (instancetype) init:(Animation*)animationInterface :(int32_t)width :(int32_t)height {
        self = [super init:((ImageAnimation*) [((ImageAnimation*) [ImageAnimation alloc]) init:[[AnimationFrameToImageUtil getInstance] getInstanceWH:width :height :animationInterface] :[AnimationBehavior getInstance]])];
    return self;
}

@end

