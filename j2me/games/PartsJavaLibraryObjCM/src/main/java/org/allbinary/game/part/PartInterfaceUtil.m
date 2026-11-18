// Generated Code Do Not Modify
#include "org/allbinary/game/part/PartInterfaceUtil.h"
#include "org/allbinary/game/part/PartInterface.h"


static PartInterface** PartInterfaceUtil_SINGLETON;

void PartInterfaceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PartInterfaceUtil_SINGLETON = ((PartInterface**) java_array_new(sizeof(PartInterface*), 0));
}

@implementation PartInterfaceUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PartInterface**) getZeroArray {
        return (PartInterfaceUtil_staticInit(), PartInterfaceUtil_SINGLETON);
}

@end

