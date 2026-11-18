// Generated Code Do Not Modify
#include "org/allbinary/graphics/canvas/transition/progress/ProgressPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"



void ProgressPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ProgressPaintable

- (void) initFields {
    
}


- (instancetype) init:(ProgressCanvas*)progressCanvas {
    self = [super init];
    [self initFields];
        self->progressCanvas = progressCanvas;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->progressCanvas paint2:graphics];
}

@end

