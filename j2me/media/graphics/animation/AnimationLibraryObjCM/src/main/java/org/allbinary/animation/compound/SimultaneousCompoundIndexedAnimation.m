// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/SimultaneousCompoundIndexedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"



void SimultaneousCompoundIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimultaneousCompoundIndexedAnimation

- (void) initFields {
    
}


- (instancetype) init:(Animation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->animationInterfaceArray = animationInterfaceArray;
    return self;
}


- (void) setFrame:(int32_t)frameIndex {
        IndexedAnimation* indexedAnimation = nullptr;
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[index]);
            [indexedAnimation setFrame:frameIndex];
        }
}


- (int32_t) getFrame {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[0]);
        return [indexedAnimation getFrame];
}


- (int32_t) getSize {
        IndexedAnimation* indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[0]);
        return [indexedAnimation getSize];
}


- (void) previousFrame {
        IndexedAnimation* indexedAnimation = nullptr;
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            indexedAnimation = ((IndexedAnimation*) self->animationInterfaceArray[index]);
            [indexedAnimation previousFrame];
        }
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


// throws Exception
- (void) nextFrame {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] nextFrame];
        }
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        int32_t size = java_array_length(self->animationInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            [self->animationInterfaceArray[index] paintXY:graphics :x :y];
        }
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        int32_t size = java_array_length(self->animationInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            [self->animationInterfaceArray[index] paintThreedXYZ:graphics :x :y :z];
        }
}


- (Animation**) getAnimationInterfaceArray {
        return self->animationInterfaceArray;
}


- (void) setAnimationInterfaceArray:(Animation**)animationInterfaceArray {
        self->animationInterfaceArray = animationInterfaceArray;
}

@end

