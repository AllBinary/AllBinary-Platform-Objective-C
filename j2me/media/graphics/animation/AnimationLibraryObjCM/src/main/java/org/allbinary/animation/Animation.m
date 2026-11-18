// Generated Code Do Not Modify
#include "org/allbinary/animation/Animation.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/animation/AnimationInterface.h"



void Animation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Animation

- (void) initFields {
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    self->colorP = 0;
    self->changeBasicColorP = [BasicColorFactory getInstance]->NULL_COLOR;
    self->changeColorP = 0;
    self->alphaP = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setAlpha:(int32_t)alpha {
        self->alphaP = alpha;
}


// throws Exception
- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
}


- (bool) isThreed {
        return false;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
        self->colorP = [self->basicColor intValue];
}


- (void) setBackgroundBasicColorP:(BasicColor*)basicColor {
}


- (BasicColor*) getChangeBasicColor {
        return self->changeBasicColorP;
}


- (void) changeBasicColor:(BasicColor*)basicColor {
        self->changeBasicColorP = basicColor;
        self->changeColorP = [self->changeBasicColorP intValue];
}


- (int32_t) getChangeColor {
        return self->changeColorP;
}


- (int32_t) getColor {
        return self->colorP;
}


- (void) setScale:(float)scaleX :(float)scaleY {
}


- (void) setMaxScale:(float)maxScaleX :(float)maxScaleY {
}


// throws Exception
- (void) set:(GL*)gl {
}


- (void) setDx:(int32_t)dx {
}


- (int32_t) getDx {
        return 0;
}


- (void) setDy:(int32_t)dy {
}


- (int32_t) getDy {
        return 0;
}

@end

