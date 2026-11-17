// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/communication/log/Log.h"
#include "org/allbinary/logic/communication/log/LogFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.h"
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/os/linux/LinuxOperatingSystemFactory.h"
#include "org/allbinary/logic/system/os/solaris/SolarisOperatingSystemFactory.h"
#include "org/allbinary/logic/system/os/windows/WindowsOperatingSystemFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystems.h"
#include "org/allbinary/logic/system/os/SystemProperties.h"


static OperatingSystemFactory* OperatingSystemFactory_instance;

void OperatingSystemFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OperatingSystemFactory_instance = [((OperatingSystemFactory*) [OperatingSystemFactory alloc]) init];
}

@implementation OperatingSystemFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->genericOperatingSystem = (NoOperatingSystem_staticInit(), NoOperatingSystem_NO_OPERATING_SYSTEM);
    self->hasDetected = false;
}


+ (OperatingSystemFactory*) getInstance {
        return (OperatingSystemFactory_staticInit(), OperatingSystemFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// synchronized
- (GenericOperatingSystem*) getOperatingSystemInstance {
        JAVA_TRY {
            OperatingSystems* operatingSystems = [OperatingSystems getInstance];
            SystemProperties* systemProperties = [SystemProperties getInstance];
            const char* osName = [systemProperties getName];
            const char* osArch = [systemProperties getArch];
            const char* osVersion = [systemProperties getVersion];
            if (!self->hasDetected) {
                [self->logUtil putF:java_concat("osName: ", osName) :self :self->commonStrings->GET_INSTANCE];
                self->hasDetected = true;
                if (java_string_indexOf(osName, operatingSystems->LINUX) >= 0) {
                    if ([(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) contains:[LogConfigTypeFactory getInstance]->FACTORYERROR]) {
                        [self->logUtil putF:"Found a Linux OS" :self :self->commonStrings->GET_INSTANCE];
                    }
                    self->genericOperatingSystem = [[LinuxOperatingSystemFactory getInstance] getOperatingSystemInstance];
                } else if (java_string_indexOf(osName, operatingSystems->WINDOWS) >= 0) {
                    if ([(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) contains:[LogConfigTypeFactory getInstance]->FACTORYERROR]) {
                        [self->logUtil putF:"Found a Windows OS" :self :self->commonStrings->GET_INSTANCE];
                    }
                    self->genericOperatingSystem = [[WindowsOperatingSystemFactory getInstance] getOperatingSystemInstance];
                } else if (java_string_indexOf(osName, operatingSystems->SOLARIS) >= 0) {
                    if ([(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) contains:[LogConfigTypeFactory getInstance]->FACTORYERROR]) {
                        [self->logUtil putF:"Found a Solaris OS" :self :self->commonStrings->GET_INSTANCE];
                    }
                    self->genericOperatingSystem = [[SolarisOperatingSystemFactory getInstance] getOperatingSystemInstance];
                } else {
                    java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"OS Not Supported: "] append:osName] toString]));
                }
                Log* log = [LogFactory getInstanceF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"OperatingSystem Info: "] append:[[StringUtil getInstance] toString:self->genericOperatingSystem]] toString] :self :self->commonStrings->GET_INSTANCE];
                puts(java_string_of([log toString]));
                [self->logUtil putL:log];
            }
            return self->genericOperatingSystem;
        } JAVA_CATCH(Exception, e) {
            if ([(LogConfigTypes_staticInit(), LogConfigTypes_LOGGING) contains:[LogConfigTypeFactory getInstance]->FACTORYERROR]) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET_INSTANCE :e];
            }
            return (NoOperatingSystem_staticInit(), NoOperatingSystem_NO_OPERATING_SYSTEM);
        } JAVA_END_TRY;
}

@end

