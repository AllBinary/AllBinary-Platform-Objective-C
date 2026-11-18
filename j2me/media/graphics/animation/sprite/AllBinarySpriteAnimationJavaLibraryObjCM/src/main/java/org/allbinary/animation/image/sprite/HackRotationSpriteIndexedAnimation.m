// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/HackRotationSpriteIndexedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#if __has_include("org/allbinary/animation/image/sprite/AngleIncrementInfo.h")
#include "org/allbinary/animation/image/sprite/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
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
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
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



void HackRotationSpriteIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HackRotationSpriteIndexedAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(Sprite*)sprite :(Image*)image :(AngleInfo*)angleInfo :(AnimationBehavior*)animationBehavior {
        self = [super init:angleInfo :[CircularIndexUtil createInstance:360 / ((int32_t) [[angleInfo getAngleIncrementInfo] getAngleIncrement])] :animationBehavior];
        [self initFields];
        self->sprite = sprite;
        self->image = image;
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) paintFrame:(Graphics*)g :(int32_t)frame :(int32_t)x :(int32_t)y {
        [self setFrame:frame];
        [self paintXY:g :x :y];
}


- (void) paintXY:(Graphics*)g :(int32_t)x :(int32_t)y {
        [self->sprite setPosition:x :y];
        [self paint:g];
}


- (void) paint:(Graphics*)g {
        [self->sprite paint:g];
}


- (void) nextRotation {
        [self->sprite nextFrame];
}


- (void) previousRotation {
        [self->sprite prevFrame];
}


- (int32_t) getSize {
        return [self->sprite getRawFrameCount];
}


- (void) setFrame:(int32_t)frame {
        [self->sprite setFrame:frame];
}


- (int32_t) getFrame {
        return [self->sprite getFrame];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}

@end

