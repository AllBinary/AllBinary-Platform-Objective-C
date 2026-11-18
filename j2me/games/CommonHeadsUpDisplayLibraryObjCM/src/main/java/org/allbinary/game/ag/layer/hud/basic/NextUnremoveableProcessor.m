// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor.h"
#include "org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud.h"



void NextUnremoveableProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NextUnremoveableProcessor

- (void) initFields {
    
}


- (instancetype) init:(PlayerGameNotificationHud*)updateMeasurementProcessor {
    self = [super init];
    [self initFields];
        self->updateMeasurementProcessor = updateMeasurementProcessor;
    return self;
}


// throws Exception
- (void) process {
        [self->updateMeasurementProcessor setNextUnremoveableProcess];
}

@end

