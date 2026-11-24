// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/SystemProperties.h"


static SystemProperties* SystemProperties_instance;

void SystemProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SystemProperties_instance = ((SystemProperties*) [((SystemProperties*) [SystemProperties alloc]) init]);
}

@implementation SystemProperties

- (void) initFields {
    self->OS_NAME = "os.name";
    self->OS_ARCH = "os.arch";
    self->OS_VERSION = "os.version";
    self->USER_HOME = "user.home";
}


+ (SystemProperties*) getInstance {
        return (SystemProperties_staticInit(), SystemProperties_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getName {
        return [System getProperty:self->OS_NAME];
}


- (const char*) getArch {
        return [System getProperty:self->OS_ARCH];
}


- (const char*) getVersion {
        return [System getProperty:self->OS_VERSION];
}


- (const char*) getUserHomePath {
        return [System getProperty:self->USER_HOME];
}

@end

