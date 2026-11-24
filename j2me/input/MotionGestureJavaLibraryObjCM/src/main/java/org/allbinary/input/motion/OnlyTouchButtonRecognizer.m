// Generated Code Do Not Modify
#include "org/allbinary/input/motion/OnlyTouchButtonRecognizer.h"
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#include "org/allbinary/input/motion/MotionRecognizer.h"



void OnlyTouchButtonRecognizer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OnlyTouchButtonRecognizer

- (void) initFields {
    
    self->touchButtonProcessing = false;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->touchButtonRecognizer = ((TouchButtonRecognizer*) [((TouchButtonRecognizer*) [TouchButtonRecognizer alloc]) init]);
    return self;
}


// throws Exception
- (void) processStartMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if ([self->touchButtonRecognizer pressTouchButtonInput:x :y :deviceId]) {
            self->touchButtonProcessing = true;
        }
}


// throws Exception
- (void) processEndMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if (self->touchButtonProcessing) {
            self->touchButtonProcessing = false;
        }
        if ([self->touchButtonRecognizer releaseTouchButtonInput:x :y :deviceId]) {
            return;
        }
}


// throws Exception
- (void) processDraggedMotionEvent:(int32_t)x :(int32_t)y :(int32_t)deviceId :(int32_t)modifiers {
        if (self->touchButtonProcessing) {
            [self->touchButtonRecognizer pressTouchButtonInput:x :y :deviceId];
        }
}

@end

