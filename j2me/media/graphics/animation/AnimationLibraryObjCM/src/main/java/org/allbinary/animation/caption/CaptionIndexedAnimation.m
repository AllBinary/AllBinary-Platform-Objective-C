// Generated Code Do Not Modify
#include "org/allbinary/animation/caption/CaptionIndexedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/AnimationEventHandler.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#if __has_include("org/allbinary/animation/caption/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/caption/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/media/GameTickTimeDelayHelper.h")
#include "javax/microedition/media/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/math/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/math/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/util/event/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/util/event/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif



void CaptionIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CaptionIndexedAnimation

- (void) initFields {
    
    
    
    
    
    
    
    
    
    
}


- (instancetype) init:(Animation*)animationInterface :(IndexedAnimation*)movieIndexedAnimationInterface :(Player*)player :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy :(int32_t)time :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->animationInterface = animationInterface;
        self->movieIndexedAnimationInterface = movieIndexedAnimationInterface;
        self->captionDx = captionDx;
        self->captionDy = captionDy;
        self->dx = dx;
        self->dy = dy;
        self->time = time;
        self->END_EVENT = [((AllBinaryEventObject*) [AllBinaryEventObject alloc]) init:self];
        int32_t timePerFrame = self->time / [self getSize];
        self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:timePerFrame];
        self->player = player;
        [self->player start];
    return self;
}


// throws Exception
- (void) nextFrame {
        if ([self->timeDelayHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            [self->movieIndexedAnimationInterface nextFrame];
        }
        if ([self isLastFrame]) {
            [[AnimationEventHandler getInstance] fireEvent:self->END_EVENT];
        }
}


- (bool) isLastFrame {
        if ([self->movieIndexedAnimationInterface getFrame] == [self getSize] - 1) {
            return true;
        } else {
            return false;
        }
}


- (void) previousFrame {
        [self->movieIndexedAnimationInterface previousFrame];
}


- (void) setFrame:(int32_t)index {
        [self->movieIndexedAnimationInterface setFrame:index];
}


- (int32_t) getFrame {
        return [self->movieIndexedAnimationInterface getFrame];
}


- (int32_t) getSize {
        return [self->movieIndexedAnimationInterface getSize];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->animationInterface paintXY:graphics :x + self->captionDx :y + self->captionDy];
        [self->movieIndexedAnimationInterface paintXY:graphics :x + self->captionDx + self->dx :y + self->captionDy + self->dy];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        [self->animationInterface paintThreedXYZ:graphics :x + self->captionDx :y + self->captionDy :z];
        [self->movieIndexedAnimationInterface paintThreedXYZ:graphics :x + self->captionDx + self->dx :y + self->captionDy + self->dy :z];
}

@end

