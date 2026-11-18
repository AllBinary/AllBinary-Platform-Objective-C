// Generated Code Do Not Modify
#include "org/allbinary/bounds/event/BoundsChangeEvent.h"
#include "org/allbinary/graphics/Rectangle.h"



void BoundsChangeEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BoundsChangeEvent


- (instancetype) init:(Rectangle*)rectangle {
        self = [super init:rectangle];
    return self;
}


- (Rectangle*) getRectangle {
        return ((Rectangle*) [self getSource]);
}

@end

