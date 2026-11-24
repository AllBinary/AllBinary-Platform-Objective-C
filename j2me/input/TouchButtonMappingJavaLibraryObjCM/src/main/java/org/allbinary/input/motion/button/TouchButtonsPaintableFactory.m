// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsPaintableFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/input/motion/button/TouchButtonsPaintable.h"



void TouchButtonsPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonsPaintableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (Paintable*) getInstance:(BasicColor*)basicColor {
        return ((TouchButtonsPaintable*) [((TouchButtonsPaintable*) [TouchButtonsPaintable alloc]) init:basicColor]);
}

@end

