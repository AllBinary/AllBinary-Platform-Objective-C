// Generated Code Do Not Modify
#include "org/allbinary/animation/vector/AdjustedCircleAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/animation/vector/CircleAnimation.h"



void AdjustedCircleAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdjustedCircleAnimation

- (void) initFields {
    self->xAdjustment = 0;
    self->yAdjustment = 0;
}


+ (AdjustedCircleAnimation*) createAnimation:(int32_t)width :(int32_t)height :(int32_t)xAdjustment :(int32_t)yAdjustment :(BasicColor*)basicColor {
        AdjustedCircleAnimation* adjustedCircleAnimation = ((AdjustedCircleAnimation*) [((AdjustedCircleAnimation*) [AdjustedCircleAnimation alloc]) init:width :height :basicColor]);
        [adjustedCircleAnimation initXY:xAdjustment :yAdjustment];
        return adjustedCircleAnimation;
}


+ (AdjustedCircleAnimation*) createW:(int32_t)width :(int32_t)height :(int32_t)innerWidth :(BasicColor*)basicColor {
        AdjustedCircleAnimation* adjustedCircleAnimation = ((AdjustedCircleAnimation*) [((AdjustedCircleAnimation*) [AdjustedCircleAnimation alloc]) init:width :height :basicColor]);
        [adjustedCircleAnimation initMethod:innerWidth];
        return adjustedCircleAnimation;
}


- (instancetype) init:(int32_t)width :(int32_t)height :(BasicColor*)basicColor {
        self = [super init:width :height :basicColor];
        [self initFields];
    return self;
}


- (void) initXY:(int32_t)xAdjustment :(int32_t)yAdjustment {
        self->xAdjustment = xAdjustment;
        self->yAdjustment = yAdjustment;
}


- (void) initMethod:(int32_t)innerWidth {
        if ([AndroidUtil isAndroid]) {
            int32_t widthPortion = (((innerWidth / 3) * 10) / 7);
            self->xAdjustment = -((self->width >> 1) - widthPortion);
            self->yAdjustment = self->xAdjustment;
        } else {
            self->xAdjustment = -((self->width >> 1) - innerWidth);
            self->yAdjustment = self->xAdjustment;
        }
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
        [graphics drawArc:x + self->xAdjustment :y + self->yAdjustment :self->width :self->height :0 :self->TOTAL_ANGLE];
}

@end

