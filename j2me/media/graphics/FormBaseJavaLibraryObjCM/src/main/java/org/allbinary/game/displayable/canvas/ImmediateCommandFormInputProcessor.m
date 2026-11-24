// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/ImmediateCommandFormInputProcessor.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#include "org/allbinary/input/motion/gesture/observer/MotionGestureEvent.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"



void ImmediateCommandFormInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImmediateCommandFormInputProcessor

- (void) initFields {
    self->timeHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:25]);
    
}


- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(GameCommandCanvas*)gameCommandCanvas :(ScrollSelectionForm*)form {
        self = [super init:gameKeyEventList :playerInputId :gameCommandCanvas :form];
        [self initFields];
        self->gameCommandCanvas = gameCommandCanvas;
    return self;
}


// synchronized
- (void) onPressGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        JAVA_TRY {
            [super onPressGameKeyEvent:gameKeyEvent];
            if ([self->timeHelper isTimeTNT]) {
                [self processInputList];
                [self->gameCommandCanvas->repaintBehavior onChangeRepaint:[self getCanvas]];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->ON_PRESS_GAME_KEY :e];
        } JAVA_END_TRY;
}


// synchronized
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        JAVA_TRY {
            [super onDownGameKeyEvent:gameKeyEvent];
            if ([self->timeHelper isTimeTNT]) {
                [self processInputList];
                [self->gameCommandCanvas->repaintBehavior onChangeRepaint:[self getCanvas]];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->ON_DOWN_GAME_KEY :e];
        } JAVA_END_TRY;
}


// synchronized
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        JAVA_TRY {
            [super onUpGameKeyEvent:gameKeyEvent];
            if ([self->timeHelper isTimeTNT]) {
                [self processInputList];
                [self->gameCommandCanvas->repaintBehavior onChangeRepaint:[self getCanvas]];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->ON_UP_GAME_KEY :e];
        } JAVA_END_TRY;
}


- (void) onMotionGestureEvent:(MotionGestureEvent*)motionGestureEvent {
        JAVA_TRY {
            [super onMotionGestureEvent:motionGestureEvent];
            if ([self->timeHelper isTimeTNT]) {
                [self processInputList];
                [self->gameCommandCanvas->repaintBehavior onChangeRepaint:[self getCanvas]];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"onMotionGestureEvent" :e];
        } JAVA_END_TRY;
}

@end

