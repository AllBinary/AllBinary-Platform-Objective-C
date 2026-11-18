// Generated Code Do Not Modify
#include "org/allbinary/input/motion/AllMotionRecognizer.h"


static int32_t AllMotionRecognizer_index = 0;

void AllMotionRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllMotionRecognizer

- (void) initFields {
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->id_ = AllMotionRecognizer_index++;
    return self;
}


// throws Exception
- (void) processStartMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
}


// throws Exception
- (void) processEndMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
}


// throws Exception
- (void) processDraggedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
}


// throws Exception
- (void) processMovedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
}


// throws Exception
- (void) processScrolledMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
}


- (int32_t) getId {
        return self->id_;
}

@end

