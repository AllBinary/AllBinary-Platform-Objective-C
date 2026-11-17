// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"


static NoHardwareComponent* NoHardwareComponent_instance;

void NoHardwareComponent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoHardwareComponent_instance = [((NoHardwareComponent*) [NoHardwareComponent alloc]) init];
}

@implementation NoHardwareComponent

- (instancetype) init {
    self = [super init];
    return self;
}


+ (NoHardwareComponent*) getInstance {
        return (NoHardwareComponent_staticInit(), NoHardwareComponent_instance);
}


- (bool) compareTo:(HardwareComponentInterface*)componentInterface {
        if (self == componentInterface) {
            return true;
        }
        return false;
}


- (const char*) toString {
        return [StringUtil getInstance]->NULL_STRING;
}

@end

