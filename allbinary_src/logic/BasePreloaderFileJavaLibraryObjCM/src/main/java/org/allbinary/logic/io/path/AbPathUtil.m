// Generated Code Do Not Modify
#include "org/allbinary/logic/io/path/AbPathUtil.h"
#include "org/allbinary/logic/io/path/AbPath.h"


static AbPathUtil* AbPathUtil_instance;

void AbPathUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbPathUtil_instance = ((AbPathUtil*) [((AbPathUtil*) [AbPathUtil alloc]) init]);
}

@implementation AbPathUtil

- (void) initFields {
    self->NO_ABPATH = [AbPath createAbPath];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AbPathUtil*) getInstance {
        return (AbPathUtil_staticInit(), AbPathUtil_instance);
}

@end

