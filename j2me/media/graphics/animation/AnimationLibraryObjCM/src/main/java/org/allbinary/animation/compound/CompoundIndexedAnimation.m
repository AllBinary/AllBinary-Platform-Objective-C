// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/CompoundIndexedAnimation.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterface.h"



void CompoundIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompoundIndexedAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(Animation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->animationInterfaceArray = animationInterfaceArray;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(self->animationInterfaceArray)];
    return self;
}


- (void) setFrame:(int32_t)index {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[[self->circularIndexUtil getIndex]]);
        [indexedAnimation setFrame:index];
}


- (int32_t) getFrame {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[[self->circularIndexUtil getIndex]]);
        return [indexedAnimation getFrame];
}


- (int32_t) getSize {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[[self->circularIndexUtil getIndex]]);
        return [indexedAnimation getSize];
}


- (void) previousFrame {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[[self->circularIndexUtil getIndex]]);
        [indexedAnimation previousFrame];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


// throws Exception
- (void) nextFrame {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] nextFrame];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] paintXY:graphics :x :y];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] paintThreedXYZ:graphics :x :y :z];
}


- (IndexedAnimation*) getCurrentAnimation {
        return ((IndexedAnimation*) self->animationInterfaceArray[[self->circularIndexUtil getIndex]]);
}


- (void) nextAnimation {
        int32_t frame = [self getFrame];
        [self->circularIndexUtil next];
        [self setFrame:frame];
}


- (void) previousAnimation {
        int32_t frame = [self getFrame];
        [self->circularIndexUtil previous];
        [self setFrame:frame];
}


- (void) setAnimation:(int32_t)index {
        int32_t frame = [self getFrame];
        [self->circularIndexUtil setIndex:index];
        [self setFrame:frame];
}


- (Animation**) getAnimationInterfaceArray {
        return self->animationInterfaceArray;
}


- (void) setAnimationInterfaceArray:(Animation**)animationInterfaceArray {
        self->animationInterfaceArray = animationInterfaceArray;
}


// throws Exception
- (void) set:(GL*)gl {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] set:gl];
        }
}

@end

