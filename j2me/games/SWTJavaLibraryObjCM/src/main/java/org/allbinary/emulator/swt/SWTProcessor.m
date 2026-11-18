// Generated Code Do Not Modify
#include "org/allbinary/emulator/swt/SWTProcessor.h"
#include "org/allbinary/thread/NullRunnable.h"
#include "org/eclipse/swt/widgets/Display.h"


static SWTProcessor* SWTProcessor_instance;

void SWTProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SWTProcessor_instance = [((SWTProcessor*) [SWTProcessor alloc]) init];
}

@implementation SWTProcessor

- (void) initFields {
    self->runnable = [NullRunnable getInstance];
}


+ (SWTProcessor*) getInstance {
        return (SWTProcessor_staticInit(), SWTProcessor_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) process:(Display*)display {
        [display sleep];
}

@end

