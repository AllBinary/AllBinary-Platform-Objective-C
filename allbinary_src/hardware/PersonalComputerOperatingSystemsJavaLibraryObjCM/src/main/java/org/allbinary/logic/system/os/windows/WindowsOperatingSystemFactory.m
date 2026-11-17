// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystems.h"
#include "org/allbinary/logic/system/os/SystemProperties.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/os/windows/WindowsOS.h"


static WindowsOperatingSystemFactory* WindowsOperatingSystemFactory_instance;

void WindowsOperatingSystemFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WindowsOperatingSystemFactory_instance = [((WindowsOperatingSystemFactory*) [WindowsOperatingSystemFactory alloc]) init];
}

@implementation WindowsOperatingSystemFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


+ (WindowsOperatingSystemFactory*) getInstance {
        return (WindowsOperatingSystemFactory_staticInit(), WindowsOperatingSystemFactory_instance);
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
            if (strcmp(osName, operatingSystems->WINDOWS_NT) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else if (strcmp(osName, operatingSystems->WINDOWS_10) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else if (strcmp(osName, operatingSystems->WINDOWS_11) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else if (strcmp(osName, operatingSystems->WINDOWS2000) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else if (strcmp(osName, operatingSystems->WINDOWS_XP) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else if (strcmp(osName, operatingSystems->WINDOWS_VISTA) == 0) {
                operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
            } else {
                if ([operatingSystems isUnknownSpecificOSAllowed]) {
                    operatingSystemInterface = [((WindowsOS*) [WindowsOS alloc]) init];
                } else {
                    java_throw(java_exception_new("Exception", java_concat("Specific Windows OS Not Supported: ", osName)));
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

