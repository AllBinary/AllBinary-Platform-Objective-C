// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/CircleAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/math/AngleFactory.h"
#if __has_include("org/allbinary/math/AngleFactory.h")
#include "org/allbinary/math/AngleFactory.h"
#endif



void CircleAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CircleAnimation

- (void) initFields {
    self->TOTAL_ANGLE = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
    
    
}


- (instancetype) init:(int32_t)width :(int32_t)height :(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        self->width = width;
        self->height = height;
        [self setBasicColorP:basicColor];
    return self;
}


- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
        [graphics drawArc:x :y :self->width :self->height :0 :self->TOTAL_ANGLE];
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [super setBasicColorP:basicColor];
}

@end

