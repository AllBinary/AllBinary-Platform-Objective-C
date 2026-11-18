// Generated Code Do Not Modify
#include "org/allbinary/animation/FillAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/AnimationBehavior.h"



void FillAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FillAnimation

- (void) initFields {
    
    
    
}


- (instancetype) init:(int32_t*)pixelBuffer :(int32_t)width :(int32_t)height :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        self->width = 100;
        self->height = 100;
        self->pixelBuffer = pixelBuffer;
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


- (void) paint:(Graphics*)g {
        [g drawRGB:self->pixelBuffer :0 :self->width :0 :0 :self->width :self->height :true];
}

@end

