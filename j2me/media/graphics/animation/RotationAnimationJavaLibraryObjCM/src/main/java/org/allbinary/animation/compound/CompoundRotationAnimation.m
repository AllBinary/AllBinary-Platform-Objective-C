// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/CompoundRotationAnimation.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/compound/CompoundAnimationInterface.h"



void CompoundRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompoundRotationAnimation

- (void) initFields {
    
}


- (instancetype) init:(RotationAnimation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:[AngleInfo getInstance:[AngleFactory getInstance]->QUARTER_TOTAL_ANGLE] :[CircularIndexUtil createInstance:4] :animationBehavior];
        [self initFields];
        self->animationInterfaceArray = animationInterfaceArray;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(self->animationInterfaceArray)];
    return self;
}


- (void) setFrame:(int32_t)index {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] setFrame:index];
}


- (int32_t) getFrame {
        return [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] getFrame];
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] getAnimationSize];
}


- (int32_t) getSize {
        return [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] getSize];
}


- (void) previousFrame {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] previousFrame];
}


// throws Exception
- (void) nextFrame {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] nextFrame];
}


- (void) previousRotation {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] previousRotation];
}


- (void) nextRotation {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] nextRotation];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] paintXY:graphics :x :y];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] paintThreedXYZ:graphics :x :y :z];
}


- (IndexedAnimation*) getCurrentAnimation {
        return self->animationInterfaceArray[[self->circularIndexUtil getIndex]];
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


- (void) setFrameByDirection:(Direction*)direction {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] setFrameByDirection:direction];
}


- (void) setFrameToAngle:(Angle*)angle {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] setFrameToAngle:angle];
}


- (void) adjustFrameToAngle:(Angle*)newAngle {
        [self adjustFrame:[newAngle getValue]];
}


- (void) adjustFrame:(int16_t)angle {
        [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] adjustFrame:angle];
}


- (AngleInfo*) getAngleInfoP {
        return [self->animationInterfaceArray[[self->circularIndexUtil getIndex]] getAngleInfoP];
}


- (RotationAnimation**) getAnimationInterfaceArray {
        return self->animationInterfaceArray;
}


- (void) setAnimationInterfaceArray:(RotationAnimation**)animationInterfaceArray {
        self->animationInterfaceArray = animationInterfaceArray;
}


// throws Exception
- (void) set:(GL*)gl {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] set:gl];
        }
}

@end

