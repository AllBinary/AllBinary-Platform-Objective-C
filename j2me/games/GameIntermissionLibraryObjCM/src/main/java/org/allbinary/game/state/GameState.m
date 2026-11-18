// Generated Code Do Not Modify
#include "org/allbinary/game/state/GameState.h"



void GameState_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameState

- (void) initFields {
    
}


- (instancetype) init:(const char*)name :(int32_t)state {
    self = [super init];
    [self initFields];
        self->name = name;
    return self;
}


- (const char*) toString {
        return self->name;
}

@end

