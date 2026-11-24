// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimation.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif



void AdjustedImageArrayRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedImageArrayRotationAnimation

- (void) initFields {
    self->dx = 0;
    self->dy = 0;
}


// throws Exception
+ (AdjustedImageArrayRotationAnimation*) createAdjustedImageArrayRotationAnimationInfo:(id)anyType :(AnimationBehavior*)animationBehavior {
        ImageArrayRotationAnimationInfo* imageRotationAnimationInfo = ((ImageArrayRotationAnimationInfo*) anyType);
        return ((AdjustedImageArrayRotationAnimation*) [((AdjustedImageArrayRotationAnimation*) [AdjustedImageArrayRotationAnimation alloc]) init:[imageRotationAnimationInfo getImageArray] :[imageRotationAnimationInfo getAngleInfoP] :[imageRotationAnimationInfo getTotalAngle] :[imageRotationAnimationInfo getDx] :[imageRotationAnimationInfo getDy] :animationBehavior]);
}


// throws Exception
+ (AdjustedImageArrayRotationAnimation*) createAnimation:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle :(AnimationBehavior*)animationBehavior {
        return ((AdjustedImageArrayRotationAnimation*) [((AdjustedImageArrayRotationAnimation*) [AdjustedImageArrayRotationAnimation alloc]) init:imageArray :angleInfo :totalAngle :-([imageArray[0] getWidth] >> 2) :-([imageArray[0] getHeight] >> 2) :animationBehavior]);
}


- (instancetype) init:(Image**)imageArray :(AngleInfo*)angleInfo :(int32_t)totalAngle :(int32_t)dx :(int32_t)dy :(AnimationBehavior*)animationBehavior {
        self = [super init:imageArray :angleInfo :totalAngle :animationBehavior];
        [self initFields];
        [self initMethod:dx :dy];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)dx :(int32_t)dy {
        [self setDx:dx];
        [self setDy:dy];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [super paintXY:graphics :x + self->dx :y + self->dy];
}


- (void) setDx:(int32_t)dx {
        self->dx = dx;
}


- (int32_t) getDx {
        return self->dx;
}


- (void) setDy:(int32_t)dy {
        self->dy = dy;
}


- (int32_t) getDy {
        return self->dy;
}

@end

