// Generated Code Do Not Modify
#include "org/allbinary/graph/E.h"


static E* E_e;

void E_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    E_e = ((E*) [((E*) [E alloc]) init]);
}

@implementation E

- (instancetype) init {
    self = [super init];
    return self;
}


- (E*) newInstance {
        return (E_staticInit(), E_e);
}

@end

