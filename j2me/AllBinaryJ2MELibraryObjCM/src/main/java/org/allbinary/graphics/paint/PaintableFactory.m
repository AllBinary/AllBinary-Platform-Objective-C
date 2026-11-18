// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/PaintableFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"



void PaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PaintableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (Paintable*) getInstance {
        return [NullPaintable getInstance];
}

@end

