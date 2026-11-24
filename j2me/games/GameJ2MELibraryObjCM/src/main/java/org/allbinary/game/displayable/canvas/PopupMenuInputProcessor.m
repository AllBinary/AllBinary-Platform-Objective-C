// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/PopupMenuInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInputStrings.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/math/RectangleCollisionUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/input/GameInputStrings.h")
#include "org/allbinary/game/input/GameInputStrings.h"
#endif



void PopupMenuInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PopupMenuInputProcessor

- (void) initFields {
    self->rectangleCollisionUtil = [RectangleCollisionUtil getInstance];
    self->CLICK_DELAY = 120;
    self->clickTimeHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:self->CLICK_DELAY]);
    
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(Rectangle*)rectangle {
        self = [super init:gameKeyEventList :playerInputId :gameCanvas];
        [self initFields];
        self->rectangle = rectangle;
    return self;
}


- (void) initMethod:(Rectangle*)rectangle {
        self->rectangle = rectangle;
}


// throws Exception
- (int32_t) processInput:(int32_t)key {
        if (key == (Canvas_staticInit(), Canvas_KEY_STAR)) {
            AllBinaryGameCanvas* gameCanvas = ((AllBinaryGameCanvas*) [self getCanvas]);
            [gameCanvas toggleMenu];
            return 1;
        }
        return 0;
}


// throws Exception
- (int32_t) processInputList {
        JAVA_TRY {
            int32_t motionInputsIndex = [self processMotionInputs];
            BasicArrayList* list = [self getGameKeyEventList];
            int32_t size = [list size];
            int32_t key = 0;
            GameKeyEvent* gameKeyEvent = nullptr;
            for (int32_t index = 0; index < size; index++) {
                gameKeyEvent = ((GameKeyEvent*) list->objectArray[index]);
                if (gameKeyEvent != nil) {
                    key = [gameKeyEvent getKey];
                    if ([self processInput:key] == 1) {
                        break;
                    }
                }
            }
            [self clear];
            if (size > 0 || motionInputsIndex >= 0) {
                return 1;
            } else {
                return -1;
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :[GameInputStrings getInstance]->PROCESS_INPUT :e];
            return -1;
        } JAVA_END_TRY;
}


// throws Exception
- (int32_t) processMotionInputs {
        int32_t lastIndex = [self->motionGestureEventList size] - 1;
        if (lastIndex >= 0) {
            MotionGestureEvent* motionGestureEvent = ((MotionGestureEvent*) self->motionGestureEventList->objectArray[lastIndex]);
            [self processMotionInput:motionGestureEvent];
        }
        [self->motionGestureEventList clear];
        return lastIndex;
}


// throws Exception
- (void) processMotionInput:(MotionGestureEvent*)motionGestureEvent {
        if (motionGestureEvent == nil) {
            [self->logUtil putF:"Exception: Bug" :self :self->gameInputStrings->PROCESS_MOTION_INPUT];
            return;
        }
        TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
        MotionGestureInput* motionGestureInput = [motionGestureEvent getMotionGesture];
        if (motionGestureInput == touchMotionGestureFactory->RELEASED) {
            GPoint* point = [motionGestureEvent getCurrentPoint];
            GPoint* rectPoint = [self->rectangle getPoint];
            if ([self->rectangleCollisionUtil isInside:[rectPoint getX] :[rectPoint getY] :[self->rectangle getMaxX] + 20 :[self->rectangle getMaxY] :[point getX] :[point getY]]) {
                if ([self->clickTimeHelper isTimeTNT]) {
                    AllBinaryGameCanvas* gameCanvas = ((AllBinaryGameCanvas*) [self getCanvas]);
                    [gameCanvas toggleMenu];
                }
            }
        }
}

@end

