// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/BoundBounceAI.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/bounds/BoundsVisitorInterface.h"
#include "org/allbinary/bounds/LayerBounds.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#if __has_include("org/allbinary/game/ag/ai/GPoint.h")
#include "org/allbinary/game/ag/ai/GPoint.h"
#endif
#if __has_include("javax/microedition/lcdui/GPoint.h")
#include "javax/microedition/lcdui/GPoint.h"
#endif
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/game/ai/GPoint.h")
#include "org/allbinary/game/ai/GPoint.h"
#endif
#if __has_include("org/allbinary/game/input/GPoint.h")
#include "org/allbinary/game/input/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/layer/GPoint.h")
#include "org/allbinary/layer/GPoint.h"
#endif
#if __has_include("org/allbinary/layer/GPoint.h")
#include "org/allbinary/layer/GPoint.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/GPoint.h")
#include "org/allbinary/game/ag/ai/GPoint.h"
#endif
#if __has_include("javax/microedition/lcdui/GPoint.h")
#include "javax/microedition/lcdui/GPoint.h"
#endif
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/bounds/GPoint.h")
#include "org/allbinary/bounds/GPoint.h"
#endif
#if __has_include("org/allbinary/game/ai/GPoint.h")
#include "org/allbinary/game/ai/GPoint.h"
#endif
#if __has_include("org/allbinary/game/input/GPoint.h")
#include "org/allbinary/game/input/GPoint.h"
#endif
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#if __has_include("org/allbinary/layer/GPoint.h")
#include "org/allbinary/layer/GPoint.h"
#endif
#if __has_include("org/allbinary/layer/GPoint.h")
#include "org/allbinary/layer/GPoint.h"
#endif



void BoundBounceAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BoundBounceAI

- (void) initFields {
    self->currentRelativeAngle = 0;
    
    
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput :(LayerBounds*)layerBounds :(BoundsVisitorInterface*)boundsVisitorInterface {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->layerBounds = layerBounds;
        self->boundsVisitorInterface = boundsVisitorInterface;
    return self;
}


- (void) paint:(Graphics*)graphics {
        Rectangle* rectange = [self->layerBounds getRectangleP];
        [graphics drawRect:[[rectange getPoint] getX] :[[rectange getPoint] getY] :[rectange getWidth] :[rectange getHeight]];
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        [self->layerBounds visit:self->boundsVisitorInterface];
}

@end

