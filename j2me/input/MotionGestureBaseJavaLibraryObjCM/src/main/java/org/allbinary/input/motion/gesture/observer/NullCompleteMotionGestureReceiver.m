// Generated Code Do Not Modify
#include "org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface.h"



void NullCompleteMotionGestureReceiver_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NullCompleteMotionGestureReceiver

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:"Null Gesture Reciever" :self :commonStrings->CONSTRUCTOR];
    return self;
}


// throws Exception
- (void) onMotionGestureCompleted:(BasicArrayList*)list {
}

@end

