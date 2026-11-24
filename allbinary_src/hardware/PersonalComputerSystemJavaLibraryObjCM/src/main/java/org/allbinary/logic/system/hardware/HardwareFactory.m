// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/HardwareFactory.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystems.h"
#include "org/allbinary/logic/system/hardware/linux/LinuxHardware.h"
#include "org/allbinary/logic/system/hardware/windows/WindowsHardware.h"
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"


static HardwareFactory* HardwareFactory_instance;

void HardwareFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HardwareFactory_instance = ((HardwareFactory*) [((HardwareFactory*) [HardwareFactory alloc]) init]);
}

@implementation HardwareFactory


+ (HardwareFactory*) getInstance {
        return (HardwareFactory_staticInit(), HardwareFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (HardwareInterface*) getInstance:(GenericOperatingSystem*)os {
        JAVA_TRY {
            OperatingSystems* operatingSystems = [OperatingSystems getInstance];
            if ([[os getName] compareTo:operatingSystems->LINUX] == 0) {
                return ((HardwareInterface*) ((LinuxHardware*) [((LinuxHardware*) [LinuxHardware alloc]) init]));
            } else if ([[os getName] indexOf:operatingSystems->WINDOWS] >= 0) {
                return ((HardwareInterface*) ((WindowsHardware*) [((WindowsHardware*) [WindowsHardware alloc]) init]));
            }
            java_throw(java_exception_new("Exception", java_concat("No Hardware Imp for: ", [os getName])));
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_END_TRY;
}

@end

