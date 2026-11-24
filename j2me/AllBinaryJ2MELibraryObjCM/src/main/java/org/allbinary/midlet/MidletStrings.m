// Generated Code Do Not Modify
#include "org/allbinary/midlet/MidletStrings.h"


static MidletStrings* MidletStrings_instance;

void MidletStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MidletStrings_instance = ((MidletStrings*) [((MidletStrings*) [MidletStrings alloc]) init]);
}

@implementation MidletStrings

- (void) initFields {
    self->COMMAND_ACTION = "commandAction";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (MidletStrings*) getInstance {
        return (MidletStrings_staticInit(), MidletStrings_instance);
}

@end

