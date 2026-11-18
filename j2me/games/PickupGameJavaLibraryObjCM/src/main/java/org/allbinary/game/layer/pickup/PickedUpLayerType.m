// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"



void PickedUpLayerType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PickedUpLayerType

- (void) initFields {
    
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
    return self;
}


- (const char*) toString {
        return self->name;
}

@end

