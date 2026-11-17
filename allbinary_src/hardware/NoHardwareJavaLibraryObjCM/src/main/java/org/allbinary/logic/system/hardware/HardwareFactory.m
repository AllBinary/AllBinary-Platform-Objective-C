// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/HardwareFactory.h"
#include "org/allbinary/logic/system/os/OperatingSystemInterface.h"
#include "org/allbinary/logic/system/hardware/NoHardware.h"
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"


static HardwareFactory* HardwareFactory_instance;

void HardwareFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HardwareFactory_instance = [((HardwareFactory*) [HardwareFactory alloc]) init];
}

@implementation HardwareFactory

- (void) initFields {
    self->SINGLETON = [NoHardware getInstance];
}


+ (HardwareFactory*) getInstance {
        return (HardwareFactory_staticInit(), HardwareFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (HardwareInterface*) getInstance:(OperatingSystemInterface*)os {
        JAVA_TRY {
            return self->SINGLETON;
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_END_TRY;
}

@end

