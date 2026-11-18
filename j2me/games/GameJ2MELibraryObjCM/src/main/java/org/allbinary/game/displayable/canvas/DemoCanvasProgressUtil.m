// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/DemoCanvasProgressUtil.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/paint/PaintableComposite.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"



void DemoCanvasProgressUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoCanvasProgressUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) showProgress:(DemoCanvas*)demoCanvas {
        [DemoCanvasProgressUtil showProgressOptionallyInTheBackground:demoCanvas :false];
}


+ (void) showProgressOptionallyInTheBackground:(DemoCanvas*)demoCanvas :(bool)background {
        ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
        [progressCanvas startBackground:background];
        PaintableInterface** paintableArray = ((PaintableInterface**) java_array_new(sizeof(PaintableInterface*), 2));
        paintableArray[0] = progressCanvas;
        paintableArray[1] = [demoCanvas getDefaultPaintableInterface];
        [demoCanvas setDefaultPaintableInterface:[((PaintableComposite*) [PaintableComposite alloc]) init:paintableArray]];
        [demoCanvas setPaintableInterface:[demoCanvas getDefaultPaintableInterface]];
}

@end

