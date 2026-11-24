// Generated Code Do Not Modify
#include "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"


static CompleteMotionGestureInputToGameMotionGestureInput* CompleteMotionGestureInputToGameMotionGestureInput_instance;

void CompleteMotionGestureInputToGameMotionGestureInput_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CompleteMotionGestureInputToGameMotionGestureInput_instance = ((CompleteMotionGestureInputToGameMotionGestureInput*) [((CompleteMotionGestureInputToGameMotionGestureInput*) [CompleteMotionGestureInputToGameMotionGestureInput alloc]) init]);
}

@implementation CompleteMotionGestureInputToGameMotionGestureInput

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CompleteMotionGestureInputToGameMotionGestureInput*) getInstance {
        return (CompleteMotionGestureInputToGameMotionGestureInput_staticInit(), CompleteMotionGestureInputToGameMotionGestureInput_instance);
}


- (void) initMethod {
        [PreLogUtil put:"No Touch Button = No Compound Motion Gestures" :self :self->commonStrings->INIT];
}

@end

