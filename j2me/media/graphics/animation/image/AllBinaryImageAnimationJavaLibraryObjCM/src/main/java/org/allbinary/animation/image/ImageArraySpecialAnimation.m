// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArraySpecialAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/animation/image/ImageArrayAnimation.h"
#if __has_include("org/allbinary/animation/image/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/image/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/special/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/special/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GameTickTimeDelayHelper.h")
#include "org/allbinary/graphics/displayable/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif



void ImageArraySpecialAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArraySpecialAnimation

- (void) initFields {
    self->timeDelayHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:270]);
    self->loopCount = 0;
    self->loopCountTotal = 1;
}


- (instancetype) init:(Image**)imageArray :(AnimationBehavior*)animationBehavior {
        self = [super init:imageArray :animationBehavior];
        [self initFields];
        [self reset];
    return self;
}


- (int32_t) getLoopCount {
        return self->loopCount;
}


- (void) setLastFrame {
        [self->circularIndexUtil setIndex:[self->circularIndexUtil getSize] - 1];
}


- (void) reset {
        [self setFrame:[self getSize] - 1];
        self->loopCount = 0;
}


- (void) nextFrame {
        if ([self getFrame] > 0) {
            if ([self->timeDelayHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
                [self previousFrame];
                if ([self getFrame] == 0) {
                    self->loopCount++;
                }
            }
        }
}


- (bool) isComplete {
        if (self->loopCount < self->loopCountTotal || [self getFrame] != 0) {
            return false;
        } else {
            return true;
        }
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        x = [[DisplayInfoSingleton getInstance] getLastHalfWidth] - ([[self getImage:[self->circularIndexUtil getIndex]] getWidth] >> 1);
        y = 5;
        [super paintXY:graphics :x :y];
}

@end

