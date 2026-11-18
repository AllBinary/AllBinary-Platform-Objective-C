// Generated Code Do Not Modify
#include "org/allbinary/game/layer/SWTBlackPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"



void SWTBlackPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SWTBlackPaintable

- (void) initFields {
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    self->BLACK = [BasicColorFactory getInstance]->BLACK;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->basicSetColorUtil setBasicColorP:graphics :self->BLACK];
}

@end

