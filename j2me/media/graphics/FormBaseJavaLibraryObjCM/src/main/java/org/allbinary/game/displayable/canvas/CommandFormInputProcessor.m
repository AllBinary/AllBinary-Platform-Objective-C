// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/graphics/form/CommandCurrentSelectionForm.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureInput.h"
#include "org/allbinary/input/motion/gesture/TouchMotionGestureFactory.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/media/audio/PrimaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/SelectSound.h"
#include "org/allbinary/thread/PrimaryThreadPool.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/CommandRunnable.h"
#if __has_include("org/allbinary/game/displayable/canvas/PlayerQueue.h")
#include "org/allbinary/game/displayable/canvas/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/commands/PlayerQueue.h")
#include "org/allbinary/game/commands/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/observer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/time/PlayerQueue.h")
#include "org/allbinary/time/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/PlayerQueue.h")
#include "org/allbinary/game/displayable/canvas/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/commands/PlayerQueue.h")
#include "org/allbinary/game/commands/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/observer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/time/PlayerQueue.h")
#include "org/allbinary/time/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/commands/ThreadPool.h")
#include "org/allbinary/game/commands/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ThreadPool.h")
#include "org/allbinary/game/configuration/feature/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/event/ThreadPool.h")
#include "org/allbinary/game/input/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/input/event/ThreadPool.h")
#include "org/allbinary/game/input/event/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/ThreadPool.h")
#include "org/allbinary/graphics/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/ThreadPool.h")
#include "org/allbinary/graphics/displayable/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/form/ThreadPool.h")
#include "org/allbinary/graphics/form/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/ThreadPool.h")
#include "org/allbinary/graphics/opengles/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/ThreadPool.h")
#include "org/allbinary/input/motion/gesture/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/ThreadPool.h")
#include "org/allbinary/input/motion/gesture/ThreadPool.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/ThreadPool.h")
#include "org/allbinary/input/motion/gesture/observer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/string/ThreadPool.h")
#include "org/allbinary/logic/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/media/audio/ThreadPool.h")
#include "org/allbinary/media/audio/ThreadPool.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPool.h")
#include "org/allbinary/thread/ThreadPool.h"
#endif
#if __has_include("org/allbinary/time/ThreadPool.h")
#include "org/allbinary/time/ThreadPool.h"
#endif
#if __has_include("org/allbinary/util/ThreadPool.h")
#include "org/allbinary/util/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/PlayerQueue.h")
#include "org/allbinary/game/displayable/canvas/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("javax/microedition/lcdui/PlayerQueue.h")
#include "javax/microedition/lcdui/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/commands/PlayerQueue.h")
#include "org/allbinary/game/commands/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/PlayerQueue.h")
#include "org/allbinary/game/configuration/feature/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/input/event/PlayerQueue.h")
#include "org/allbinary/game/input/event/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/PlayerQueue.h")
#include "org/allbinary/game/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/PlayerQueue.h")
#include "org/allbinary/graphics/displayable/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/form/PlayerQueue.h")
#include "org/allbinary/graphics/form/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/PlayerQueue.h")
#include "org/allbinary/graphics/opengles/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/input/motion/gesture/observer/PlayerQueue.h")
#include "org/allbinary/input/motion/gesture/observer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/logic/string/PlayerQueue.h")
#include "org/allbinary/logic/string/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/thread/PlayerQueue.h")
#include "org/allbinary/thread/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/time/PlayerQueue.h")
#include "org/allbinary/time/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/util/PlayerQueue.h")
#include "org/allbinary/util/PlayerQueue.h"
#endif



void CommandFormInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandFormInputProcessor

- (void) initFields {
    self->MOTION_GESTURE_SOURCE_ID = [GameKeyEventFactory getInstance]->MOTION_GESTURE_SOURCE_ID;
    self->CLICK_DELAY = 150;
    self->clickTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:self->CLICK_DELAY];
    self->DOUBLE_CLICK_DELAY = 1200;
    self->doubleClickTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:self->DOUBLE_CLICK_DELAY];
    self->isSingleKeyProcessing = [[InputFeatureFactory getInstance] isSingleKeyProcessing];
    
    self->hasPressed = false;
    self->PROCESS_COMMAND = "processCommand";
    self->NAME_LABEL = " ScrollSelectionForm: ";
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(ScrollSelectionForm*)form {
        self = [super init:gameKeyEventList :playerInputId :gameCanvas];
        [self initFields];
        self->form = form;
    return self;
}


// throws Exception
- (int32_t) processInput:(int32_t)key {
        if (key == (Canvas_staticInit(), Canvas_LEFT) || key == (Canvas_staticInit(), Canvas_RIGHT) || key == (Canvas_staticInit(), Canvas_UP) || key == (Canvas_staticInit(), Canvas_DOWN)) {
            [[PrimaryPlayerQueueFactory getInstance] add:[SelectSound getInstance]];
            [self->form processInputKey:key];
            return 1;
        } else if (key == (Canvas_staticInit(), Canvas_FIRE)) {
            [[PrimaryPlayerQueueFactory getInstance] add:[SelectSound getInstance]];
            return [self processCommand];
        }
        return 0;
}


- (int32_t) processCommand {
        CommandCurrentSelectionForm* commandCurrentSelectionForm = ((CommandCurrentSelectionForm*) self->form);
        Command* command = [commandCurrentSelectionForm getSelectedCommand];
        [self->logUtil putF:[command toString] :self :self->PROCESS_COMMAND];
        Features* features = [Features getInstance];
        OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
        if ((SWTUtil_staticInit(), SWTUtil_isSWT) && [features isFeature:openGLFeatureFactory->OPENGL] && command != [GameCommandsFactory getInstance]->EXIT_COMMAND) {
            [[((CommandRunnable*) [CommandRunnable alloc]) init:self :command] run];
        } else {
            [[PrimaryThreadPool getInstance] runTask:[((CommandRunnable*) [CommandRunnable alloc]) init:self :command]];
        }
        if (command == [GameCommandsFactory getInstance]->QUIT_COMMAND) {
            return -1;
        } else {
            return 1;
        }
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
                key = [gameKeyEvent getKey];
                if ([gameKeyEvent getSourceId] != self->MOTION_GESTURE_SOURCE_ID) {
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
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->PROCESS_INPUT :e];
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
        TouchMotionGestureFactory* touchMotionGestureFactory = [TouchMotionGestureFactory getInstance];
        MotionGestureInput* motionGestureInput = [motionGestureEvent getMotionGesture];
        if (motionGestureInput == touchMotionGestureFactory->RELEASED) {
            GPoint* point = [motionGestureEvent getCurrentPoint];
            if ([self->form isInForm:point]) {
                int32_t index = [self->form getSelectedIndexForPoint:point];
                if (index != -1) {
                    [[PrimaryPlayerQueueFactory getInstance] add:[SelectSound getInstance]];
                    if (index == [self->form getSelectedIndex]) {
                        if ([self->clickTimeHelper isTimeTNT]) {
                            [self processCommand];
                        }
                    } else {
                        [self->form setSelectedIndex:index];
                    }
                } else {
                }
            }
            if (self->hasPressed) {
                if (![self->doubleClickTimeHelper isTimeTNT]) {
                    [self->logUtil putF:"Double Press" :self :self->gameInputStrings->PROCESS_MOTION_INPUT];
                    [self processCommand];
                }
                self->doubleClickTimeHelper->delay = self->DOUBLE_CLICK_DELAY;
                [self->doubleClickTimeHelper setStartTimeTNT];
            }
            self->hasPressed = false;
        } else if (motionGestureInput == touchMotionGestureFactory->PRESSED) {
            self->doubleClickTimeHelper->delay = 0;
            self->hasPressed = true;
        }
}


- (const char*) toString {
        return [[[[[((StringMaker*) [StringMaker alloc]) init] append:[super toString]] append:self->NAME_LABEL] append:[self->form toString]] toString];
}

@end

