// Generated Code Do Not Modify
#include "org/allbinary/game/Intermission.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/game/IntermissionInterface.h"
#include "org/allbinary/game/NullIntermissionEnableListener.h"
#include "org/allbinary/game/IntermissionEnableListenerInterface.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif



void Intermission_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Intermission

- (void) initFields {
    self->enabled = false;
    self->timeElapsedHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0]);
    self->intermissionEnableListener = [NullIntermissionEnableListener getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setListener:(IntermissionEnableListenerInterface*)enableListener {
        self->intermissionEnableListener = enableListener;
}


- (TimeDelayHelper*) getTimeDelayHelper {
        return self->timeElapsedHelper;
}


- (void) setEnabled:(bool)enabled {
        self->enabled = enabled;
        if ([self isEnabled]) {
            [[self getTimeDelayHelper] setStartTimeTNT];
        }
        [((id<IntermissionEnableListenerInterface>) self->intermissionEnableListener) notifyIntermission:enabled];
}


- (bool) isEnabled {
        return self->enabled;
}

@end

