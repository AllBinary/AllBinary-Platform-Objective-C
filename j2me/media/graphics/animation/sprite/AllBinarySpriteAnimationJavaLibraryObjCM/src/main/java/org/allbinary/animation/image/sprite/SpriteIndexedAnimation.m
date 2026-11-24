// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void SpriteIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpriteIndexedAnimation

- (void) initFields {
    
    
    
}


- (instancetype) init:(Sprite*)sprite :(Image*)image :(BasicColor**)basicColorArray :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->sprite = sprite;
        self->image = image;
        self->basicColorArray = basicColorArray;
        if (java_array_length(self->basicColorArray) != 0 && [self getSize] != java_array_length(self->basicColorArray)) {
            java_throw(java_exception_new("Exception", [[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonLabels getInstance]->TOTAL_LABEL] appendint:[self getSize]] append:"!="] appendint:java_array_length(self->basicColorArray)] toString]));
        }
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        for (int32_t index = 0; index < java_array_length(self->basicColorArray); index++) {
            if (basicColor == self->basicColorArray[index]) {
                [self setFrame:index];
                break;
            }
        }
}


- (BasicColor*) getBasicColorP {
        if (java_array_length(self->basicColorArray) < [self getFrame]) {
            return self->basicColorArray[[self getFrame]];
        } else {
            return [BasicColorFactory getInstance]->WHITE;
        }
}


- (void) paintFrame:(Graphics*)graphics :(int32_t)frame :(int32_t)x :(int32_t)y {
        [self setFrame:frame];
        [self->sprite setPosition:x :y];
        [self->sprite paint:graphics];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->sprite setPosition:x :y];
        [self->sprite paint:graphics];
}


- (void) paint:(Graphics*)graphics {
        [self->sprite paint:graphics];
}


- (void) nextFrame {
        [self->sprite nextFrame];
}


- (void) previousFrame {
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


- (bool) isLastFrame {
        if ([self->sprite getFrame] == [self getSize] - 1) {
            return true;
        } else {
            return false;
        }
}


- (int32_t) getLastFrame {
        return [self getSize];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


// throws Exception
- (void) close {
}


// throws Throwable
- (void) finalize {
}

@end

