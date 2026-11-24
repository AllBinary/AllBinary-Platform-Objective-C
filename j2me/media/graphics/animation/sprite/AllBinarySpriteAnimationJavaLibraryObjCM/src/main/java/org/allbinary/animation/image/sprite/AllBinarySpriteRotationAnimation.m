// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation.h"
#if __has_include("org/allbinary/math/AngleFactory.h")
#include "org/allbinary/math/AngleFactory.h"
#endif
#if __has_include("org/allbinary/animation/image/sprite/AngleIncrementInfo.h")
#include "org/allbinary/animation/image/sprite/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/game/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/game/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/direction/AngleIncrementInfo.h")
#include "org/allbinary/direction/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif



void AllBinarySpriteRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinarySpriteRotationAnimation


- (instancetype) init:(Sprite*)sprite :(Image*)image :(AnimationBehavior*)animationBehavior {
        self = [super init:sprite :image :[AngleInfo getInstance:((int16_t) (((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) / [sprite getRawFrameCount]))] :animationBehavior];
        [self->angleInfo adjustAngle:[self->sprite getFrame]];
    return self;
}


- (void) nextRotation {
        [self->sprite nextFrame];
        [self->angleInfo adjustAngle:[self->sprite getFrame]];
}


- (void) previousRotation {
        [self->sprite prevFrame];
        [self->angleInfo adjustAngle:[self->sprite getFrame]];
}


- (void) setFrameByDirection:(Direction*)direction {
        Angle* angle = [self->directionUtil getFrameAngle:direction];
        [self adjustFrameToAngle:angle];
}


- (void) setFrameToAngle:(Angle*)angle {
        [self adjustFrameToAngle:angle];
}


- (void) setFrame:(int32_t)index {
        [self->sprite setFrame:index];
        [self->angleInfo adjustAngle:[self getFrame]];
}


- (void) adjustFrameToAngle:(Angle*)angle {
        [self adjustFrame:[angle getValue]];
}


- (void) adjustFrame:(int16_t)angle {
        [self setFrame:[self->frameUtil getFrameForAngle:angle :((int32_t) [[self->angleInfo getAngleIncrementInfo] getAngleIncrement])]];
}

@end

