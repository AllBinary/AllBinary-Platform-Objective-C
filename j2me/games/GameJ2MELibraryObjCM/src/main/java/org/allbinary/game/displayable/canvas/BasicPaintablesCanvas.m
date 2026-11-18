// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BasicPaintablesCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"



void BasicPaintablesCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicPaintablesCanvas

- (void) initFields {
    
    
}


- (instancetype) init:(CommandListener*)cmdListener :(const char*)name :(AllBinaryGameLayerManager*)allBinaryGameLayerManager :(Paintable**)paintableArray {
        self = [super init:cmdListener :name :[allBinaryGameLayerManager getBackgroundBasicColor] :[allBinaryGameLayerManager getForegroundBasicColor]];
        [self initFields];
        self->paintableArray = paintableArray;
        self->colorFillPaintable = [[ColorFillPaintableFactory getInstance] getInstance:[allBinaryGameLayerManager getBackgroundBasicColor] :false];
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->colorFillPaintable paint:graphics];
        [graphics setColor:self->foregroundColor];
        for (int32_t index = java_array_length(self->paintableArray) - 1; index >= 0; index--) {
            [self->paintableArray[index] paint:graphics];
        }
        [super paint:graphics];
}

@end

