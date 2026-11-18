// Generated Code Do Not Modify
#include "org/allbinary/media/graphics/geography/pathfinding/MultipassState.h"



void MultipassState_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultipassState

- (void) initFields {
    self->step = 0;
    self->iteration = 0;
    self->iteration2 = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

