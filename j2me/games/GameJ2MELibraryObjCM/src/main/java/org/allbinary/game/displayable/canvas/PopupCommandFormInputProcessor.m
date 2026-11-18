// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/PopupCommandFormInputProcessor.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.h"



void PopupCommandFormInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PopupCommandFormInputProcessor


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(ScrollSelectionForm*)form :(PopupMenuInputProcessor*)popupMenuInputProcessor {
        self = [super init:gameKeyEventList :playerInputId :gameCanvas :form];
    return self;
}


// throws Exception
- (int32_t) processInput:(int32_t)key {
        return [super processInput:key];
}


// throws Exception
- (void) processMotionInput:(MotionGestureEvent*)motionGestureEvent {
        [super processMotionInput:motionGestureEvent];
}

@end

