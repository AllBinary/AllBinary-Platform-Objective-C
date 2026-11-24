// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystems.h"
#include "org/allbinary/logic/system/os/SystemProperties.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/os/linux/LinuxOS.h"
#if __has_include("org/allbinary/logic/system/os/SystemProperties.h")
#include "org/allbinary/logic/system/os/SystemProperties.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h")
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#endif


static LinuxOperatingSystemFactory* LinuxOperatingSystemFactory_instance;

void LinuxOperatingSystemFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LinuxOperatingSystemFactory_instance = ((LinuxOperatingSystemFactory*) [((LinuxOperatingSystemFactory*) [LinuxOperatingSystemFactory alloc]) init]);
}

@implementation LinuxOperatingSystemFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


+ (LinuxOperatingSystemFactory*) getInstance {
        return (LinuxOperatingSystemFactory_staticInit(), LinuxOperatingSystemFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (GenericOperatingSystem*) getOperatingSystemInstance {
        JAVA_TRY {
            OperatingSystems* operatingSystems = [OperatingSystems getInstance];
            const char* osName = [[SystemProperties getInstance] getName];
            GenericOperatingSystem* operatingSystemInterface = nullptr;
            if (strcmp(osName, operatingSystems->LINUX) == 0) {
                operatingSystemInterface = ((LinuxOS*) [((LinuxOS*) [LinuxOS alloc]) init]);
            } else {
                if ([operatingSystems isUnknownSpecificOSAllowed]) {
                    operatingSystemInterface = ((LinuxOS*) [((LinuxOS*) [LinuxOS alloc]) init]);
                } else {
                    java_throw(java_exception_new("Exception", java_concat("Specific Linux OS Not Supported: ", osName)));
                }
            }
            return operatingSystemInterface;
        } JAVA_CATCH(Exception, e) {
            if ([(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) contains:[LogConfigTypeFactory getInstance]->FACTORYERROR]) {
                CommonStrings* commonStrings = [CommonStrings getInstance];
                [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
            }
            return (NoOperatingSystem_staticInit(), NoOperatingSystem_NO_OPERATING_SYSTEM);
        } JAVA_END_TRY;
}

@end

