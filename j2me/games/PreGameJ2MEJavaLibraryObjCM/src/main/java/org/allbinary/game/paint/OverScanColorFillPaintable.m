// Generated Code Do Not Modify
#include "org/allbinary/game/paint/OverScanColorFillPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/game/paint/ColorFillPaintable.h"



void OverScanColorFillPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OverScanColorFillPaintable


- (instancetype) init:(BasicColor*)basicColor {
        self = [super init:basicColor];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [graphics setColor:self->colorP];
        [graphics fillRect:-[graphics getClipX] :-[graphics getClipY] :[self->displayInfoSingleton getLastWidth] + ([graphics getClipX] * 2) :[self->displayInfoSingleton getLastHeight] + ([graphics getClipY] * 2)];
}

@end

