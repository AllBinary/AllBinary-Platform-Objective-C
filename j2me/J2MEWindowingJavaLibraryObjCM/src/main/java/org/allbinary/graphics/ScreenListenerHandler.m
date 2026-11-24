// Generated Code Do Not Modify
#include "org/allbinary/graphics/ScreenListenerHandler.h"
#include "org/allbinary/graphics/ScreenEmptyListener.h"
#include "org/allbinary/graphics/ScreenListenerInterface.h"


static ScreenListenerHandler* ScreenListenerHandler_instance;

void ScreenListenerHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenListenerHandler_instance = ((ScreenListenerHandler*) [((ScreenListenerHandler*) [ScreenListenerHandler alloc]) init]);
}

@implementation ScreenListenerHandler

- (void) initFields {
    self->screenListenerInterface = ((ScreenEmptyListener*) [((ScreenEmptyListener*) [ScreenEmptyListener alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ScreenListenerHandler*) getInstance {
        return (ScreenListenerHandler_staticInit(), ScreenListenerHandler_instance);
}


- (void) setListener:(ScreenListenerInterface*)screenListenerInterface {
        self->screenListenerInterface = screenListenerInterface;
}


- (void) fireWithState:(bool)isFullScreen {
        [((id<ScreenListenerInterface>) self->screenListenerInterface) onFullScreen:isFullScreen];
}


- (void) fire {
        [((id<ScreenListenerInterface>) self->screenListenerInterface) onFullScreenDisplay];
}

@end

