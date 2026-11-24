// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/SimultaneousCompoundIndexAnimation.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
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



void SimultaneousCompoundIndexAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimultaneousCompoundIndexAnimation

- (void) initFields {
    
}


- (instancetype) init:(IndexedAnimation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->animationInterfaceArray = animationInterfaceArray;
    return self;
}


- (void) setFrame:(int32_t)frameIndex {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] setFrame:frameIndex];
        }
}


- (int32_t) getFrame {
        return [self->animationInterfaceArray[0] getFrame];
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self->animationInterfaceArray[0] getAnimationSize];
}


- (int32_t) getSize {
        return [self->animationInterfaceArray[0] getSize];
}


- (void) previousFrame {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] previousFrame];
        }
}


// throws Exception
- (void) nextFrame {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] nextFrame];
        }
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] paintXY:graphics :x :y];
        }
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] paintThreedXYZ:graphics :x :y :z];
        }
}


// throws Exception
- (void) set:(GL*)gl {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] set:gl];
        }
}


- (IndexedAnimation**) getAnimationInterfaceArray {
        return self->animationInterfaceArray;
}


- (void) setAnimationInterfaceArray:(IndexedAnimation**)animationInterfaceArray {
        self->animationInterfaceArray = animationInterfaceArray;
}

@end

