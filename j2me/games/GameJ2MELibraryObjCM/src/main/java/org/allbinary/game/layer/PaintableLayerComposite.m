// Generated Code Do Not Modify
#include "org/allbinary/game/layer/PaintableLayerComposite.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/layer/Layer.h"
#if __has_include("org/allbinary/layer/Layer.h")
#include "org/allbinary/layer/Layer.h"
#endif



void PaintableLayerComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PaintableLayerComposite

- (void) initFields {
    
}


- (instancetype) init:(Layer**)paintableArray {
    self = [super init];
    [self initFields];
        self->paintableArray = paintableArray;
    return self;
}


- (void) paint:(Graphics*)graphics {
        for (int32_t index = java_array_length(self->paintableArray); --index >= 0; ) {
            [self->paintableArray[index] paint:graphics];
        }
}


- (void) paintThreed:(Graphics*)graphics {
        PaintableInterface* paintableInterface = nullptr;
        for (int32_t index = java_array_length(self->paintableArray); --index >= 0; ) {
            paintableInterface = ((PaintableInterface*) self->paintableArray[index]);
            [((id<PaintableInterface>) paintableInterface) paintThreed:graphics];
        }
}

@end

