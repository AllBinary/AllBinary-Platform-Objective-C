// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/InitGameProcessor.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/ProgressCanvas.h")
#include "org/allbinary/game/displayable/canvas/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/canvas/ProgressCanvas.h")
#include "org/allbinary/canvas/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ProgressCanvas.h")
#include "org/allbinary/logic/communication/log/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/string/ProgressCanvas.h")
#include "org/allbinary/string/ProgressCanvas.h"
#endif



void InitGameProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InitGameProcessor

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


// throws Exception
- (void) process {
        if ([[ProgressCanvasFactory getInstance] isInGame]) {
            [self->gameCanvas setProcessGameProcessorInit];
        }
}

@end

