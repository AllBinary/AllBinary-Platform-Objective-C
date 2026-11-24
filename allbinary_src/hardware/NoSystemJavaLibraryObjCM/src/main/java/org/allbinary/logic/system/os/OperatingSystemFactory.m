// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static OperatingSystemFactory* OperatingSystemFactory_instance;

void OperatingSystemFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OperatingSystemFactory_instance = ((OperatingSystemFactory*) [((OperatingSystemFactory*) [OperatingSystemFactory alloc]) init]);
}

@implementation OperatingSystemFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->genericOperatingSystem = (NoOperatingSystem_staticInit(), NoOperatingSystem_NO_OPERATING_SYSTEM);
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
        CommonStrings* commonStrings = [CommonStrings getInstance];
        JAVA_TRY {
            const char* osString = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"OperatingSystem Info: "] append:[self->genericOperatingSystem toString]] toString];
            puts(java_string_of(osString));
            [self->logUtil putF:osString :self :commonStrings->GET_INSTANCE];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET_INSTANCE :e];
        } JAVA_END_TRY;
        return self->genericOperatingSystem;
}

@end

