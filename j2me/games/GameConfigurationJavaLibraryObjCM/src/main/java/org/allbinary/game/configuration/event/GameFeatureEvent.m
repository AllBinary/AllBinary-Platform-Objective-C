// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/GameFeatureEvent.h"



void GameFeatureEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameFeatureEvent

- (void) initFields {
    
}


- (instancetype) init:(id)anyType :(const char*)whatChanged {
        self = [super init:anyType];
        [self initFields];
        self->whatChanged = whatChanged;
    return self;
}


- (const char*) getWhatChanged {
        return self->whatChanged;
}


- (id) getGameOption {
        return [self getSource];
}

@end

