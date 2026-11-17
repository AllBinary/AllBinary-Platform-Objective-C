// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/NoHardware.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/NoHardwareComponent.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"


static HardwareInterface* NoHardware_instance;

void NoHardware_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoHardware_instance = [((NoHardware*) [NoHardware alloc]) init];
}

@implementation NoHardware

- (instancetype) init {
    self = [super init];
    return self;
}


+ (HardwareInterface*) getInstance {
        return (NoHardware_staticInit(), NoHardware_instance);
}


- (HardwareComponentInterface*) getComponent:(int32_t)index {
        return [NoHardwareComponent getInstance];
}


- (const char*) toString {
        return "No Hardware";
}


- (bool) compareTo:(HardwareInterface*)hardwareInterface {
        return true;
}


- (ABHashtable*) difference:(HardwareInterface*)hardwareInterface {
        return [StdUtil getInstance]->NULL_TABLE;
}

@end

