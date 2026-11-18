// Generated Code Do Not Modify
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"



void ColorFillBasePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ColorFillBasePaintable

- (void) initFields {
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    self->colorP = 0;
}


- (instancetype) init:(BasicColor*)basicColor {
    self = [super init];
    [self initFields];
        [self setBasicColorP:basicColor];
    return self;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
        [self setColor:[[self getBasicColorP] intValue]];
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (int32_t) getColor {
        return self->colorP;
}


- (void) setColor:(int32_t)color {
        self->colorP = color;
}


- (void) paint:(Graphics*)graphics {
}

@end

