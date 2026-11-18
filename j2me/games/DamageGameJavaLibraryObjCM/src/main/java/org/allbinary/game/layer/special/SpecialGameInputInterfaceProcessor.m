// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialGameInputInterfaceProcessor.h"
#include "org/allbinary/game/layer/special/SpecialGameInputInterface.h"



void SpecialGameInputInterfaceProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialGameInputInterfaceProcessor

- (void) initFields {
    
}


- (instancetype) init:(SpecialGameInputInterface*)collidableDestroyableDamageableLayer {
    self = [super init];
    [self initFields];
        self->specialGameInputInterface = collidableDestroyableDamageableLayer;
    return self;
}

@end

