// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/RectangleFilledAdjustedAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/vector/RectangleFilledAnimation.h"



void RectangleFilledAdjustedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RectangleFilledAdjustedAnimation

- (void) initFields {
    
    
}


- (instancetype) init:(int32_t)width :(int32_t)height :(int32_t)offsetX :(int32_t)offsetY :(BasicColor*)basicColor {
        self = [super init:width :height :basicColor];
        [self initFields];
        self->offsetX = offsetX;
        self->offsetY = offsetY;
        [self setBasicColorP:basicColor];
    return self;
}


- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
        [super paintXY:graphics :x + self->offsetX :y + self->offsetY];
}


- (void) setOffsetX:(int32_t)offsetX {
        self->offsetX = offsetX;
}


- (void) setOffsetY:(int32_t)offsetY {
        self->offsetY = offsetY;
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [super setBasicColorP:basicColor];
}

@end

