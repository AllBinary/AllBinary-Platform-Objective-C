// Generated Code Do Not Modify
#include "org/allbinary/animation/special/TitleAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/logic/ABSystemWrapper.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/special/SpecialAnimation.h"
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif



void TitleAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TitleAnimation

- (void) initFields {
    self->systemWrapper = [ABSystemWrapper getInstance];
    self->deltaX = 0.0f;
    self->deltaY = 0.0f;
    self->deltaZ = 0.0f;
    
    
    
    
    
    
    
    
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->CLEAR_COLOR = [BasicColorFactory getInstance]->CLEAR_COLOR;
}


+ (TitleAnimation*) createAnimation:(IndexedAnimation**)animationInterfaceArray :(BasicColor**)basicColorArray :(int32_t*)dxArray :(int32_t*)dyArray :(int32_t)y :(int32_t)width {
        return ((TitleAnimation*) [((TitleAnimation*) [TitleAnimation alloc]) init:animationInterfaceArray :basicColorArray :dxArray :dyArray :y :width :((IndexedAnimationBehavior*) [((IndexedAnimationBehavior*) [IndexedAnimationBehavior alloc]) init:1 :250])]);
}


- (instancetype) init:(IndexedAnimation**)animationInterfaceArray :(BasicColor**)basicColorArray :(int32_t*)dxArray :(int32_t*)dyArray :(int32_t)y :(int32_t)width :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->lastFrameStartTime = [self->systemWrapper currentTimeMillis];
        self->animationInterfaceArray = animationInterfaceArray;
        self->sizeP = java_array_length(self->animationInterfaceArray);
        self->basicColorArray = basicColorArray;
        self->dxArray = dxArray;
        self->dyArray = dyArray;
        self->y = y;
        self->widthP = width;
        [self reset];
    return self;
}


- (void) nextFrame {
        int64_t currentTime = [self->systemWrapper currentTimeMillis];
        int64_t totalTimeElapsed = currentTime - self->lastFrameStartTime;
        IndexedAnimationBehavior* indexedAnimationBehavior = ((IndexedAnimationBehavior*) [self getAnimationBehavior]);
        if (totalTimeElapsed > indexedAnimationBehavior->frameDelayTime) {
            [self previousFrame];
            self->lastFrameStartTime = currentTime;
        }
        if ([self->animationInterfaceArray[0] getFrame] == 0) {
            indexedAnimationBehavior->loopIndex++;
        }
}


- (bool) isComplete {
        IndexedAnimationBehavior* indexedAnimationBehavior = ((IndexedAnimationBehavior*) [self getAnimationBehavior]);
        if (indexedAnimationBehavior->loopTotal == -1 || indexedAnimationBehavior->loopIndex < indexedAnimationBehavior->loopTotal || [self getFrame] != 0) {
            return false;
        } else {
            return true;
        }
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (int32_t) getSize {
        return [self->animationInterfaceArray[0] getSize];
}


- (int32_t) getFrame {
        return [self->animationInterfaceArray[0] getFrame];
}


- (void) setFrame:(int32_t)frame {
        for (int32_t index = 0; index < self->sizeP; index++) {
            [self->animationInterfaceArray[index] setFrame:frame];
        }
}


- (void) setLastFrame {
        [self setFrame:[self getSize] - 1];
}


- (void) reset {
        [self setLastFrame];
        IndexedAnimationBehavior* indexedAnimationBehavior = (((IndexedAnimationBehavior*) [self getAnimationBehavior]));
        [indexedAnimationBehavior reset];
}


- (void) previousFrame {
        for (int32_t index = 0; index < self->sizeP; index++) {
            [self->animationInterfaceArray[index] previousFrame];
        }
}


- (void) paintFrameXY:(Graphics*)graphics :(int32_t)frame :(int32_t)x :(int32_t)y {
        [self setFrame:frame];
        [self paintXY:graphics :x :y];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)ax :(int32_t)ay {
        int32_t x = 0;
        if (self->widthP != (Integer_staticInit(), Integer_MIN_VALUE)) {
            x = (([self->displayInfoSingleton getLastWidth] - self->widthP) / 2);
        }
        int32_t deltaX = 0;
        int32_t deltaY = 0;
        for (int32_t index = 0; index < self->sizeP; index++) {
            deltaX = self->dxArray[index] + x;
            deltaY = self->dyArray[index] + self->y;
            if (self->basicColorArray[index] != self->CLEAR_COLOR) {
                [self->basicSetColorUtil setBasicColorP:graphics :self->basicColorArray[index]];
            }
            [self->animationInterfaceArray[index] paintXY:graphics :deltaX :deltaY];
        }
}

@end

