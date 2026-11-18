// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation.h"
#include "org/allbinary/game/input/CompleteMotionGestureInputEvent.h"
#include "org/allbinary/util/BasicArrayList.h"



void MotionGestureToMotionGestureActionAssociation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionGestureToMotionGestureActionAssociation

- (void) initFields {
    
    
}


- (instancetype) init:(BasicArrayList*)list :(CompleteMotionGestureInputEvent*)commandAction {
    self = [super init];
    [self initFields];
        self->list = list;
        self->motionGestureAction = commandAction;
    return self;
}


- (BasicArrayList*) getMotionGesture {
        return self->list;
}


- (void) setMotionGestures:(BasicArrayList*)list {
        self->list = list;
}


- (CompleteMotionGestureInputEvent*) getCommandAction {
        return self->motionGestureAction;
}


- (void) setMotionGestureAction:(CompleteMotionGestureInputEvent*)commandAction {
        self->motionGestureAction = commandAction;
}


- (bool) isMotionGestureArrayEquals:(BasicArrayList*)aList {
        int32_t size = [aList size];
        if ([self->list size] != size) {
            return false;
        }
        for (int32_t i = size - 1; i >= 0; i--) {
            if (aList->objectArray[i] != self->list->objectArray[i]) {
                return false;
            }
        }
        return true;
}

@end

