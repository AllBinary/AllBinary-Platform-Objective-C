// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/ColorChangeEventHandler.h"


static ColorChangeEventHandler* ColorChangeEventHandler_eventHandler;

void ColorChangeEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ColorChangeEventHandler_eventHandler = ((ColorChangeEventHandler*) [((ColorChangeEventHandler*) [ColorChangeEventHandler alloc]) init]);
}

@implementation ColorChangeEventHandler


- (instancetype) init {
    self = [super init];
    return self;
}


// synchronized
+ (ColorChangeEventHandler*) getInstance {
        return (ColorChangeEventHandler_staticInit(), ColorChangeEventHandler_eventHandler);
}

@end

