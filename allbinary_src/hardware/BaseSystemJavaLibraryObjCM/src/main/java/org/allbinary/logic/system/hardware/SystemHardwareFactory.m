// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/SystemHardwareFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/hardware/NoHardware.h"
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"
#include "org/allbinary/logic/system/hardware/HardwareFactory.h"


static SystemHardwareFactory* SystemHardwareFactory_instance;

void SystemHardwareFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SystemHardwareFactory_instance = [((SystemHardwareFactory*) [SystemHardwareFactory alloc]) init];
}

@implementation SystemHardwareFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->hardwareInterface = [NoHardware getInstance];
}


+ (SystemHardwareFactory*) getInstance {
        return (SystemHardwareFactory_staticInit(), SystemHardwareFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (HardwareInterface*) getInstance:(GenericOperatingSystem*)operatingSystemInterface {
        JAVA_TRY {
            if (self->hardwareInterface == [NoHardware getInstance]) {
                self->hardwareInterface = [[HardwareFactory getInstance] getInstance:operatingSystemInterface];
            }
            [self->logUtil putF:"Found Hardware" :self :self->commonStrings->CONSTRUCTOR];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
        return self->hardwareInterface;
}


+ (const char*) static_toString {
        SystemHardwareFactory* systemHardwareFactory = [SystemHardwareFactory getInstance];
        StringMaker* osBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [osBuffer append:"Hardware Info: \n"];
        if (systemHardwareFactory->hardwareInterface != nil) {
            [osBuffer append:[systemHardwareFactory->hardwareInterface toString]];
        } else {
            [osBuffer append:[StringUtil getInstance]->NULL_STRING];
        }
        return [osBuffer toString];
}

@end

