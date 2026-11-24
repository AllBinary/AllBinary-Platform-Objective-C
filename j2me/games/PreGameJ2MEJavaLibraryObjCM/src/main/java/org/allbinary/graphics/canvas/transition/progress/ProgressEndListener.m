// Generated Code Do Not Modify
#include "org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.h"


ProgressEndListener* ProgressEndListener_instance;

void ProgressEndListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ProgressEndListener_instance = ((ProgressEndListener*) [((ProgressEndListener*) [ProgressEndListener alloc]) init]);
}

@implementation ProgressEndListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onEndEvent {
}

@end

