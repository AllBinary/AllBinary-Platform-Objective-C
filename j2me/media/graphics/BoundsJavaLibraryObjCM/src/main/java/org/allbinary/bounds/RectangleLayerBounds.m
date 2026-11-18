// Generated Code Do Not Modify
#include "org/allbinary/bounds/RectangleLayerBounds.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/bounds/LayerBounds.h"
#include "org/allbinary/bounds/BoundsVisitorInterface.h"
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif



void RectangleLayerBounds_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RectangleLayerBounds


- (instancetype) init:(Rectangle*)rectangle {
        self = [super init:rectangle];
    return self;
}


- (void) visit:(BoundsVisitorInterface*)boundsVisitorInterface {
        if ([boundsVisitorInterface getX] > [self->rectangle getMaxX]) {
            [boundsVisitorInterface maxX];
        }
        if ([boundsVisitorInterface getY] > [self->rectangle getMaxY]) {
            [boundsVisitorInterface maxY];
        }
        if ([boundsVisitorInterface getX] < [[self->rectangle getPoint] getX]) {
            [boundsVisitorInterface minX];
        }
        if ([boundsVisitorInterface getY] < [[self->rectangle getPoint] getY]) {
            [boundsVisitorInterface minY];
        }
}

@end

