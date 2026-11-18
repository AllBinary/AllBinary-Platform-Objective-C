// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/MultitouchReleaseHelper.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/input/motion/button/ReleaseHelper.h"
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#include "org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#if __has_include("org/allbinary/input/motion/button/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/input/motion/button/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif



void MultitouchReleaseHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultitouchReleaseHelper


- (instancetype) init:(TouchButtonRecognizer*)touchButtonRecognizer {
        self = [super init:touchButtonRecognizer];
    return self;
}


// throws Exception
- (void) release:(TouchButtonInput*)touchButtonInput :(int32_t)deviceId {
        TouchButtonInput* cancelTouchButtonInput = [[CancelTouchButtonInputFactory getInstance] getCancel:touchButtonInput];
        TouchButtonInput* nextTouchButtonInput = nullptr;
        GameKeyEvent* gameKeyEvent = nullptr;
        for (int32_t index = [self->touchButtonRecognizer->currentlyPressedTouchButtonSingleton size] - 1; index >= 0; index--) {
            nextTouchButtonInput = [self->touchButtonRecognizer->currentlyPressedTouchButtonSingleton get:index];
            if (cancelTouchButtonInput == nextTouchButtonInput) {
                gameKeyEvent = [nextTouchButtonInput getGameKeyEvent];
                [self->touchButtonRecognizer->upGameKeyEventHandler fireEvent:gameKeyEvent];
                [[self->touchButtonRecognizer->upGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
                [self->touchButtonRecognizer->currentlyPressedTouchButtonSingleton removeAt:index];
            }
        }
}

@end

