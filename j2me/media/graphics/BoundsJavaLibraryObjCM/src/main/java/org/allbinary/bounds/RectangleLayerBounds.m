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
        if ([((id<BoundsVisitorInterface>) boundsVisitorInterface) getX] > [self->rectangle getMaxX]) {
            [((id<BoundsVisitorInterface>) boundsVisitorInterface) maxX];
        }
        if ([((id<BoundsVisitorInterface>) boundsVisitorInterface) getY] > [self->rectangle getMaxY]) {
            [((id<BoundsVisitorInterface>) boundsVisitorInterface) maxY];
        }
        if ([((id<BoundsVisitorInterface>) boundsVisitorInterface) getX] < [[self->rectangle getPoint] getX]) {
            [((id<BoundsVisitorInterface>) boundsVisitorInterface) minX];
        }
        if ([((id<BoundsVisitorInterface>) boundsVisitorInterface) getY] < [[self->rectangle getPoint] getY]) {
            [((id<BoundsVisitorInterface>) boundsVisitorInterface) minY];
        }
}

@end

