// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayRotationAnimation.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/image/ImageArrayBaseRotationAnimation.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#if __has_include("org/allbinary/animation/image/AngleIncrementInfo.h")
#include "org/allbinary/animation/image/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif



void ImageArrayRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayRotationAnimation

- (void) initFields {
    self->expectedTotalFrames = 0;
}


// throws Exception
+ (ImageArrayRotationAnimation*) createAnimation:(id)anyType :(AnimationBehavior*)animationBehavior {
        ImageArrayRotationAnimationInfo* imageRotationAnimationInfo = ((ImageArrayRotationAnimationInfo*) anyType);
        return [((ImageArrayRotationAnimation*) [ImageArrayRotationAnimation alloc]) init:[imageRotationAnimationInfo getImageArray] :[imageRotationAnimationInfo getAngleInfoP] :[imageRotationAnimationInfo getTotalAngle] :animationBehavior];
}


- (instancetype) init:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle :(AnimationBehavior*)animationBehavior {
        self = [super init:imageArray :angleInfo :animationBehavior];
        [self initFields];
        [self initImageArray:imageArray :angleInfo :totalAngle];
    return self;
}


// throws Exception
- (void) initImageArray:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle {
        self->expectedTotalFrames = totalAngle / ((int32_t) [[self->angleInfo getAngleIncrementInfo] getAngleIncrement]);
        [self->angleInfo adjustAngle:0];
        if (self->expectedTotalFrames != [self getSize]) {
            java_throw(java_exception_new("Exception", "Wrong Number of Frames"));
        }
}


- (void) setImageArray:(Image**)imageArray {
        [super setImageArray:imageArray];
        [self->angleInfo adjustAngle:0];
}

@end

