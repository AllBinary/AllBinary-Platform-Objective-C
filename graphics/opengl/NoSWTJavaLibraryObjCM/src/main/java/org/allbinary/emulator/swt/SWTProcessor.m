// Generated Code Do Not Modify
#include "org/allbinary/emulator/swt/SWTProcessor.h"
#include "org/eclipse/swt/widgets/Display.h"
#include "org/allbinary/thread/NullRunnable.h"


static SWTProcessor* SWTProcessor_instance;

void SWTProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SWTProcessor_instance = ((SWTProcessor*) [((SWTProcessor*) [SWTProcessor alloc]) init]);
}

@implementation SWTProcessor

- (void) initFields {
    self->runnable = [NullRunnable getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (SWTProcessor*) getInstance {
        return (SWTProcessor_staticInit(), SWTProcessor_instance);
}


- (void) process:(Display*)display {
        [display sleep];
}

@end

