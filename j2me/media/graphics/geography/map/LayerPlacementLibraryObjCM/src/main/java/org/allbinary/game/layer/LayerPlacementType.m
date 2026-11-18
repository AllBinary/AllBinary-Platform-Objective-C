// Generated Code Do Not Modify
#include "org/allbinary/game/layer/LayerPlacementType.h"



void LayerPlacementType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerPlacementType

- (void) initFields {
    
}


- (instancetype) init:(int32_t)type {
    self = [super init];
    [self initFields];
        self->type = type;
    return self;
}


- (int32_t) getType {
        return self->type;
}


- (void) setType:(int32_t)type {
        self->type = type;
}

@end

