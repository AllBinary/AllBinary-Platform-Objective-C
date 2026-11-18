// Generated Code Do Not Modify
#include "org/allbinary/game/paint/ColorFillPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"



void ColorFillPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ColorFillPaintable

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
}


- (instancetype) init:(BasicColor*)basicColor {
        self = [super init:basicColor];
        [self initFields];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [graphics setColor:self->colorP];
        [graphics fillRect:0 :0 :[self->displayInfoSingleton getLastWidth] :[self->displayInfoSingleton getLastHeight]];
}

@end

