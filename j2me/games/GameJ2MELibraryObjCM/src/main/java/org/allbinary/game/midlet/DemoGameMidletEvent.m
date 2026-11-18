// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/DemoGameMidletEvent.h"
#include "org/allbinary/game/midlet/DemoGameMidletState.h"



void DemoGameMidletEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DemoGameMidletEvent

- (void) initFields {
    
}


- (instancetype) init:(id)anyType :(DemoGameMidletState*)demoGameMidletState {
        self = [super init:anyType];
        [self initFields];
        self->demoGameMidletState = demoGameMidletState;
    return self;
}


- (void) init_:(id)anyType {
        [self setSource:anyType];
}


- (void) setDemoGameMidletState:(DemoGameMidletState*)demoGameMidletState {
        self->demoGameMidletState = demoGameMidletState;
}


- (DemoGameMidletState*) getDemoGameMidletState {
        return self->demoGameMidletState;
}

@end

