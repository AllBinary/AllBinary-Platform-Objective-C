// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void MotionGestureConfiguration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureConfiguration

- (void) initFields {
    self->diagonalMotionGestureAllowed = true;
    self->diagonalTolerance = 7;
    self->minimumMotionGesture = 9;
    self->button = [StringUtil getInstance]->EMPTY_STRING;
    self->color = [BasicColorFactory getInstance]->BLUE;
    self->executingActions = true;
    self->mouseButtonMask = 0;
    self->activeCommands = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addMotionGestureAction:(BasicArrayList*)list :(CompleteMotionGestureInputEvent*)commandAction {
        [self->activeCommands add:[((MotionGestureToMotionGestureActionAssociation*) [MotionGestureToMotionGestureActionAssociation alloc]) init:list :commandAction]];
}


- (void) clearMotionGestureAction {
        [self->activeCommands clear];
}


- (BasicArrayList*) getAssociateCommandActionsList {
        return self->activeCommands;
}


- (bool) isDiagonalMotionGestureAllowed {
        return self->diagonalMotionGestureAllowed;
}


- (bool) isExecutingActionsAllowed {
        return self->executingActions;
}


- (void) setExecutingActionsAllowed:(bool)executingActionAllowed {
        self->executingActions = executingActionAllowed;
}


- (void) setDiagonalMotionGestureAllowed:(bool)diagonalMotionGestureAllowed {
        self->diagonalMotionGestureAllowed = diagonalMotionGestureAllowed;
}


- (int32_t) getDiagonalTolerance {
        return self->diagonalTolerance;
}


- (void) setDiagonalTolerance:(int32_t)diagonalTolerance {
        self->diagonalTolerance = diagonalTolerance;
}


- (int32_t) getMinimumMotionGesture {
        return self->minimumMotionGesture;
}


- (void) setMinimumMotionGesture:(int32_t)minimumMotionGesture {
        self->minimumMotionGesture = minimumMotionGesture;
}


- (const char*) getButton {
        return self->button;
}


- (void) setButton:(const char*)button {
        self->button = button;
}


- (BasicColor*) getColor {
        return self->color;
}


- (void) setColor:(BasicColor*)color {
        self->color = color;
}


- (int32_t) getMouseButtonMask {
        return self->mouseButtonMask;
}


- (void) setMouseButtonMask:(int32_t)mouseButtonMask {
        self->mouseButtonMask = mouseButtonMask;
}

@end

