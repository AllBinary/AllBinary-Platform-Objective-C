// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystems.h"
#include "org/allbinary/logic/system/os/SystemProperties.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/os/solaris/SolarisOS.h"


static SolarisOperatingSystemFactory* SolarisOperatingSystemFactory_instance;

void SolarisOperatingSystemFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SolarisOperatingSystemFactory_instance = [((SolarisOperatingSystemFactory*) [SolarisOperatingSystemFactory alloc]) init];
}

@implementation SolarisOperatingSystemFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


+ (SolarisOperatingSystemFactory*) getInstance {
        return (SolarisOperatingSystemFactory_staticInit(), SolarisOperatingSystemFactory_instance);
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
            if (strcmp(osName, operatingSystems->SOLARIS) == 0) {
                operatingSystemInterface = [((SolarisOS*) [SolarisOS alloc]) init];
            } else {
                if ([operatingSystems isUnknownSpecificOSAllowed]) {
                    operatingSystemInterface = [((SolarisOS*) [SolarisOS alloc]) init];
                } else {
                    java_throw(java_exception_new("Exception", java_concat("Specific Solaris OS Not Supported: ", osName)));
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

