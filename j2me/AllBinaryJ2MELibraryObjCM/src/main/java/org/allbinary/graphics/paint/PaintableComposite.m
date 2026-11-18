// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/PaintableComposite.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"



void PaintableComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PaintableComposite

- (void) initFields {
    
}


- (instancetype) init:(PaintableInterface**)paintableArray {
    self = [super init];
    [self initFields];
        self->paintableArray = paintableArray;
    return self;
}


- (void) paint:(Graphics*)graphics {
        for (int32_t index = java_array_length(self->paintableArray) - 1; index >= 0; index--) {
            [self->paintableArray[index] paint:graphics];
        }
}


- (void) paintThreed:(Graphics*)graphics {
        for (int32_t index = java_array_length(self->paintableArray) - 1; index >= 0; index--) {
            [self->paintableArray[index] paintThreed:graphics];
        }
}

@end

