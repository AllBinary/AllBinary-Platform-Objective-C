// Generated Code Do Not Modify
#include "org/allbinary/graphics/ResizableListenerHandler.h"
#include "org/allbinary/graphics/ResizableListenerInterface.h"


static ResizableListenerHandler* ResizableListenerHandler_instance;

void ResizableListenerHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ResizableListenerHandler_instance = [((ResizableListenerHandler*) [ResizableListenerHandler alloc]) init];
}

@implementation ResizableListenerHandler

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ResizableListenerHandler*) getInstance {
        return (ResizableListenerHandler_staticInit(), ResizableListenerHandler_instance);
}


- (void) setListener:(ResizableListenerInterface*)resizableListenerInterface {
}


- (void) fire:(bool)isFullScreen {
}


// throws Exception
// synchronized
- (void) fireEvent:(bool)value {
}

@end

