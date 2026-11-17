// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/OperatingSystems.h"


static OperatingSystems* OperatingSystems_instance;

void OperatingSystems_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OperatingSystems_instance = [((OperatingSystems*) [OperatingSystems alloc]) init];
}

@implementation OperatingSystems

- (void) initFields {
    self->LINUX = "Linux";
    self->WINDOWS = "Windows";
    self->SOLARIS = "Solaris";
    self->WINDOWS2000 = "Windows 2000";
    self->WINDOWS_NT = "Windows NT";
    self->WINDOWS_10 = "Windows 10";
    self->WINDOWS_11 = "Windows 11";
    self->WINDOWS_VISTA = "Windows Vista";
    self->WINDOWS_XP = "Windows XP";
    self->ANDROID = self->LINUX;
    self->HARMONY = "HarmonyOS";
    self->unknownSpecificOSAllowed = true;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) isUnknownSpecificOSAllowed {
        return self->unknownSpecificOSAllowed;
}


- (void) setUnknownSpecificOSAllowed:(bool)aUnknownSpecificOSAllowed {
        self->unknownSpecificOSAllowed = aUnknownSpecificOSAllowed;
}


+ (OperatingSystems*) getInstance {
        return (OperatingSystems_staticInit(), OperatingSystems_instance);
}

@end

