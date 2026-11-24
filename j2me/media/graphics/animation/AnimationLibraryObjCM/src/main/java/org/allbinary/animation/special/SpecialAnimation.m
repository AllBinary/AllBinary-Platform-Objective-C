// Generated Code Do Not Modify
#include "org/allbinary/animation/special/SpecialAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#include "org/allbinary/animation/special/SpecialAnimationInterface.h"


static SpecialAnimation* SpecialAnimation_NULL_SPECIAL_ANIMATION;

void SpecialAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SpecialAnimation_NULL_SPECIAL_ANIMATION = ((SpecialAnimation*) [((SpecialAnimation*) [SpecialAnimation alloc]) init:((IndexedAnimationBehavior*) [((IndexedAnimationBehavior*) [IndexedAnimationBehavior alloc]) init:1 :250])]);
}

@implementation SpecialAnimation


+ (SpecialAnimation*) getInstance {
        return (SpecialAnimation_staticInit(), SpecialAnimation_NULL_SPECIAL_ANIMATION);
}


- (instancetype) init:(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
    return self;
}


- (void) nextFrame {
        IndexedAnimationBehavior* indexedAnimationBehavior = (((IndexedAnimationBehavior*) self->animationBehaviorP));
        indexedAnimationBehavior->loopIndex++;
}


- (void) setLastFrame {
}


- (bool) isComplete {
        return false;
}


- (void) open {
}


- (void) close {
}


- (void) process {
}

@end

