// Generated Code Do Not Modify
#include "org/allbinary/animation/compound/SimultaneousCompoundRotationAnimation.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"



void SimultaneousCompoundRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SimultaneousCompoundRotationAnimation

- (void) initFields {
    
}


- (instancetype) init:(RotationAnimation**)animationInterfaceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:[AngleInfo getInstance:[AngleFactory getInstance]->QUARTER_TOTAL_ANGLE] :[CircularIndexUtil createInstance:4] :animationBehavior];
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


- (void) previousRotation {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] previousRotation];
        }
}


- (void) nextRotation {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] nextRotation];
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


- (void) setFrameByDirection:(Direction*)direction {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] setFrameByDirection:direction];
        }
}


- (void) setFrameToAngle:(Angle*)angle {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] setFrameToAngle:angle];
        }
}


- (void) adjustFrameToAngle:(Angle*)newAngle {
        [self adjustFrame:[newAngle getValue]];
}


- (void) adjustFrame:(int16_t)angle {
        for (int32_t index = java_array_length(self->animationInterfaceArray); --index >= 0; ) {
            [self->animationInterfaceArray[index] adjustFrame:angle];
        }
}


- (AngleInfo*) getAngleInfoP {
        return [self->animationInterfaceArray[0] getAngleInfoP];
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

