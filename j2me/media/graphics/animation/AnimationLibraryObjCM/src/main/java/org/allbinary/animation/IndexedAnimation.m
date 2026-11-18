// Generated Code Do Not Modify
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/IndexedAnimationInterface.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void IndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndexedAnimation

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
}


- (instancetype) init:(AnimationBehavior*)animationBehavior {
    self = [super init];
    [self initFields];
        self->animationBehaviorP = animationBehavior;
    return self;
}


- (AnimationBehavior*) getAnimationBehavior {
        return self->animationBehaviorP;
}


- (void) reset {
        [self->animationBehaviorP reset];
        [self setFrame:0];
}


- (void) setFrame:(int32_t)index {
}


- (int32_t) getFrame {
        return 0;
}


// throws Exception
- (int32_t) getAnimationSize {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (int32_t) getSize {
        return 0;
}


- (void) previousFrame {
}


- (bool) isLastFrame {
        if ([self getFrame] == [self getSize] - 1) {
            return true;
        } else {
            return false;
        }
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) setState:(IndexedAnimation*)indexedAnimation {
        [self setFrame:[indexedAnimation getFrame]];
        [self setDx:[indexedAnimation getDx]];
        [self setDy:[indexedAnimation getDy]];
}


- (int32_t) getWidth {
        return 0;
}


- (int32_t) getHeight {
        return 0;
}

@end

