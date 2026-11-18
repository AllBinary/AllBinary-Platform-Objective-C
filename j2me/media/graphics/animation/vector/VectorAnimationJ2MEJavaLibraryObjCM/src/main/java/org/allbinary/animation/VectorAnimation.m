// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/VectorAnimationInterface.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void VectorAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorAnimation

- (void) initFields {
    self->currentPoints = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
    self->circularIndexUtil = [CircularIndexUtil createInstance:0];
}


+ (VectorAnimation*) createVectorAnimation:(int32_t**)currentPoints2 :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior {
        int32_t*** currentPoints = ((int32_t***) java_array_new3(sizeof(int32_t), 1, java_array_length(currentPoints2), 2));
        int32_t size = java_array_length(currentPoints2);
        for (int32_t index = 0; index < size; index++) {
            currentPoints[0][index][0] = currentPoints2[index][0];
            currentPoints[0][index][1] = currentPoints2[index][1];
        }
        return [((VectorAnimation*) [VectorAnimation alloc]) init:currentPoints :basicColor :animationBehavior];
}


- (instancetype) init:(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        [self setPoints:currentPoints];
        [self setBasicColorP:basicColor];
    return self;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        bool changed = false;
        if ([self getBasicColorP] == nil || [[self getBasicColorP] intValue] != [basicColor intValue]) {
            changed = true;
        }
        [super setBasicColorP:basicColor];
        if (changed) {
            [self updateModifiers];
        }
}


- (void) changeBasicColor:(BasicColor*)basicColor {
        bool changed = false;
        if ([self getChangeBasicColor] == nil || [[self getChangeBasicColor] intValue] != [basicColor intValue]) {
            changed = true;
        }
        [super changeBasicColor:basicColor];
        if (changed) {
            [self updateModifiers];
        }
}


- (void) setAlpha:(int32_t)alpha {
        bool changed = false;
        if (self->alphaP != alpha) {
            changed = true;
        }
        [super setAlpha:alpha];
        if (changed) {
            [self updateModifiers];
        }
}


- (void) setScale:(float)scaleX :(float)scaleY {
}


- (void) setMaxScale:(float)maxScaleX :(float)maxScaleY {
}


- (void) updateModifiers {
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (int32_t) getSize {
        return java_array_length(self->currentPoints);
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) nextFrame {
        [self->circularIndexUtil next];
}


- (void) previousFrame {
        [self->circularIndexUtil previous];
}


- (void) paintVectors:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        JAVA_TRY {
            int32_t nextPointX = 0;
            int32_t nextPointY = 0;
            int32_t* nextPoint = nullptr;
            int32_t* point = nullptr;
            int32_t** currentPointsFrame = self->currentPoints[[self->circularIndexUtil getIndex]];
            int32_t size = java_array_length(currentPointsFrame);
            int32_t index = size - 2;
            while (--index >= 0) {
                nextPoint = currentPointsFrame[index];
                point = currentPointsFrame[index + 1];
                nextPointX = nextPoint[0];
                nextPointY = nextPoint[1];
                if (nextPointX != 1000) {
                    [graphics drawLine:point[0] + x :point[1] + y :nextPointX + x :nextPointY + y];
                } else {
                    index--;
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"paintVectors" :e];
        } JAVA_END_TRY;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP:graphics :self->basicColor];
        [self paintVectors:graphics :x :y];
}


- (int32_t) getFrame {
        return [self->circularIndexUtil getIndex];
}


- (void) setFrame:(int32_t)index {
        [self->circularIndexUtil setIndex:index];
}


- (int32_t**) getPoints:(int32_t)frame {
        return self->currentPoints[frame];
}


- (void) setPoints:(int32_t***)currentPoints {
        self->currentPoints = currentPoints;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(currentPoints)];
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}

@end

