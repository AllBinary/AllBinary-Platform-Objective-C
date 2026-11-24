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


+ (SystemProperties*) getInstance {
        return (SystemProperties_staticInit(), SystemProperties_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (const char*) getName {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) getArch {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) getVersion {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) getUserHomePath {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

