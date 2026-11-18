// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LicenseStrings.h"


static LicenseStrings* LicenseStrings_instance;

void LicenseStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseStrings_instance = [((LicenseStrings*) [LicenseStrings alloc]) init];
}

@implementation LicenseStrings

- (void) initFields {
    self->LOCKED = "Demo Locked Feature";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LicenseStrings*) getInstance {
        return (LicenseStrings_staticInit(), LicenseStrings_instance);
}

@end

