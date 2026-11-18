// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void BasicMenuInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicMenuInputProcessor

- (void) initFields {
    self->motionGestureEventList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->canvas = (NullCanvas_staticInit(), NullCanvas_NULL_CANVAS);
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(Canvas*)gameCanvas {
        self = [super init:gameKeyEventList :[((BasicArrayListD*) [BasicArrayListD alloc]) init] :playerInputId];
        [self initFields];
        self->canvas = gameCanvas;
    return self;
}


- (void) onMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
        [self->motionGestureEventList add:motionGestureEvent];
}


- (void) onScrolledMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
}


- (void) setCanvas:(MyCanvas*)canvas {
        self->canvas = canvas;
}


- (MyCanvas*) getCanvas {
        return ((MyCanvas*) self->canvas);
}


// throws Exception
- (int32_t) processInputList {
        return -1;
}

@end

