// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/math/RectangleCollisionUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/input/motion/button/BasicTouchInputFactory.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h"
#include "org/allbinary/input/motion/button/ReleaseHelper.h"
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#include "org/allbinary/input/motion/button/MultitouchReleaseHelper.h"
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#include "org/allbinary/input/motion/button/TouchButton.h"
#if __has_include("org/allbinary/input/motion/button/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/input/motion/button/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/math/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/math/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/util/UpGameKeyEventHandlerBase.h")
#include "org/allbinary/util/UpGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/input/motion/button/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/input/motion/button/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/graphics/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/graphics/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/logic/communication/log/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/math/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/math/DownGameKeyEventHandlerBase.h"
#endif
#if __has_include("org/allbinary/util/DownGameKeyEventHandlerBase.h")
#include "org/allbinary/util/DownGameKeyEventHandlerBase.h"
#endif



void TouchButtonRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonRecognizer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->rectangleCollisionUtil = [RectangleCollisionUtil getInstance];
    self->upGameKeyEventHandler = [UpGameKeyEventHandler getInstance];
    self->downGameKeyEventHandler = [DownGameKeyEventHandler getInstance];
    self->lastPressedTouchButtonInput = [BasicTouchInputFactory getInstance]->NONE;
    self->currentlyPressedTouchButtonSingleton = [CurrentlyPressedTouchButtonSingleton getInstance];
    self->releaseHelper = nullptr;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        if ([[TouchScreenFactory getInstance] isMultiTouch]) {
            self->releaseHelper = [((MultitouchReleaseHelper*) [MultitouchReleaseHelper alloc]) init:self];
        } else {
            self->releaseHelper = [((ReleaseHelper*) [ReleaseHelper alloc]) init:self];
        }
    return self;
}


// throws Exception
- (void) processRelease:(TouchButtonInput*)touchButtonInput :(int32_t)deviceId {
        [self->releaseHelper release:touchButtonInput :deviceId];
        GameKeyEvent* gameKeyEvent = [touchButtonInput getGameKeyEvent];
        [self->upGameKeyEventHandler fireEvent:gameKeyEvent];
        [[self->upGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
        [self->currentlyPressedTouchButtonSingleton remove:touchButtonInput];
}


// throws Exception
// synchronized
- (bool) releaseTouchButtonInput:(int32_t)x :(int32_t)y :(int32_t)deviceId {
        TouchButtonInput* touchButtonInput = self->lastPressedTouchButtonInput;
        if ([self->currentlyPressedTouchButtonSingleton contains:touchButtonInput]) {
            self->lastPressedTouchButtonInput = [BasicTouchInputFactory getInstance]->NONE;
            [self processRelease:touchButtonInput :deviceId];
            return true;
        } else {
            BasicArrayList* list = [[TouchButtonFactory getInstance] getList];
            Rectangle* rectangle = nullptr;
            GPoint* point = nullptr;
            TouchButton* touchButton = nullptr;
            for (int32_t index = [list size] - 1; index >= 0; index--) {
                touchButton = ((TouchButton*) list->objectArray[index]);
                rectangle = [touchButton getRectangle];
                point = [rectangle getPoint];
                if ([self->rectangleCollisionUtil isInside:[point getX] :[point getY] :[rectangle getMaxX] :[rectangle getMaxY] :x :y]) {
                    touchButtonInput = [touchButton getTouchButtonInput];
                    [self processRelease:touchButtonInput :deviceId];
                    return true;
                }
            }
        }
        return false;
}


// throws Exception
// synchronized
- (bool) pressTouchButtonInput:(int32_t)x :(int32_t)y :(int32_t)deviceId {
        BasicArrayList* list = [[TouchButtonFactory getInstance] getList];
        Rectangle* rectangle = nullptr;
        GPoint* point = nullptr;
        TouchButton* touchButton = nullptr;
        TouchButtonInput* touchButtonInput = nullptr;
        GameKeyEvent* gameKeyEvent = nullptr;
        for (int32_t index = [list size] - 1; index >= 0; index--) {
            touchButton = ((TouchButton*) list->objectArray[index]);
            rectangle = [touchButton getRectangle];
            point = [rectangle getPoint];
            if ([self->rectangleCollisionUtil isInside:[point getX] :[point getY] :[rectangle getMaxX] :[rectangle getMaxY] :x :y]) {
                touchButtonInput = [touchButton getTouchButtonInput];
                if (![self->currentlyPressedTouchButtonSingleton contains:touchButtonInput]) {
                    [self->releaseHelper release:touchButtonInput :deviceId];
                    self->lastPressedTouchButtonInput = touchButtonInput;
                    [self->currentlyPressedTouchButtonSingleton add:touchButtonInput];
                    gameKeyEvent = [touchButtonInput getGameKeyEvent];
                    [self->downGameKeyEventHandler fireEvent:gameKeyEvent];
                    [[self->downGameKeyEventHandler getInstanceForDevice:deviceId] fireEvent:gameKeyEvent];
                }
                return true;
            }
        }
        return false;
}

@end

