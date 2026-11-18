// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/RectangleAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"



void RectangleAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RectangleAnimation

- (void) initFields {
    
    
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
        [graphics drawRect:x :y :self->width :self->height];
}


- (void) setWidth:(int32_t)width {
        self->width = width;
}


- (void) setHeight:(int32_t)height {
        self->height = height;
}


- (BasicColor*) getBasicColorP {
        return [super getBasicColorP];
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [super setBasicColorP:basicColor];
}

@end

