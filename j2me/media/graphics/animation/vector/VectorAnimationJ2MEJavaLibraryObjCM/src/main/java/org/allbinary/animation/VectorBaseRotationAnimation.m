// Generated Code Do Not Modify
#include "org/allbinary/animation/VectorBaseRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/RotationAnimation.h"
#include "org/allbinary/animation/VectorAnimationInterface.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/graphics/color/AngleIncrementInfo.h")
#include "org/allbinary/graphics/color/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/AngleIncrementInfo.h")
#include "org/allbinary/logic/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/math/AngleIncrementInfo.h")
#include "org/allbinary/logic/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleIncrementInfo.h")
#include "org/allbinary/util/AngleIncrementInfo.h"
#endif



void VectorBaseRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorBaseRotationAnimation

- (void) initFields {
    self->currentPoints = [NullUtil getInstance]->NULL_INT_ARRAY_ARRAY_ARRAY;
}


- (instancetype) init:(AngleInfo*)angleInfo :(int32_t***)currentPoints :(BasicColor*)basicColor :(AnimationBehavior*)animationBehavior {
        self = [super init:angleInfo :[CircularIndexUtil createInstance:360 / ((int32_t) [[angleInfo getAngleIncrementInfo] getAngleIncrement])] :animationBehavior];
        [self initFields];
        [self setPoints:currentPoints];
        [self setBasicColorP:basicColor];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (int32_t) getFrame {
        return [self->circularIndexUtil getIndex];
}


- (void) setFrame:(int32_t)index {
        [self->circularIndexUtil setIndex:index];
}


- (void) nextFrame {
        [self->circularIndexUtil next];
}


- (void) previousFrame {
        [self->circularIndexUtil previous];
}


- (int32_t) getSize {
        return java_array_length(self->currentPoints);
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP:graphics :self->basicColor];
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


- (int32_t**) getPoints:(int32_t)frame {
        return self->currentPoints[frame];
}


- (void) setPoints:(int32_t***)currentPoints {
        self->currentPoints = currentPoints;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(self->currentPoints)];
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [super setBasicColorP:basicColor];
}

@end

