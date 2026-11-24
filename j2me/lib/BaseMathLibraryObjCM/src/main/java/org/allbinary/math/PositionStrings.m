// Generated Code Do Not Modify
#include "org/allbinary/math/PositionStrings.h"


static PositionStrings* PositionStrings_instance;

void PositionStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PositionStrings_instance = ((PositionStrings*) [((PositionStrings*) [PositionStrings alloc]) init]);
}

@implementation PositionStrings

- (void) initFields {
    self->X = "x";
    self->Y = "y";
    self->X_LABEL = "x: ";
    self->Y_LABEL = "y: ";
    self->Z_LABEL = "z: ";
    self->DX_LABEL = "dx: ";
    self->DY_LABEL = "dy: ";
    self->DZ_LABEL = "dz: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PositionStrings*) getInstance {
        return (PositionStrings_staticInit(), PositionStrings_instance);
}

@end

