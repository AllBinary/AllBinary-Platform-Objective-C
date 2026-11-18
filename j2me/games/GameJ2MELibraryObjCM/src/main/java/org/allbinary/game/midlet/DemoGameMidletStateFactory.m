// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/DemoGameMidletStateFactory.h"
#include "org/allbinary/game/midlet/DemoGameMidletState.h"


static DemoGameMidletStateFactory* DemoGameMidletStateFactory_STATE;

void DemoGameMidletStateFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DemoGameMidletStateFactory_STATE = [((DemoGameMidletStateFactory*) [DemoGameMidletStateFactory alloc]) init];
}

@implementation DemoGameMidletStateFactory

- (void) initFields {
    self->NONE = [((DemoGameMidletState*) [DemoGameMidletState alloc]) init];
    self->START_DEMO = [((DemoGameMidletState*) [DemoGameMidletState alloc]) init];
    self->START_GAME = [((DemoGameMidletState*) [DemoGameMidletState alloc]) init];
    self->START_INPUT_MAPPING = [((DemoGameMidletState*) [DemoGameMidletState alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DemoGameMidletStateFactory*) getInstance {
        return (DemoGameMidletStateFactory_staticInit(), DemoGameMidletStateFactory_STATE);
}

@end

