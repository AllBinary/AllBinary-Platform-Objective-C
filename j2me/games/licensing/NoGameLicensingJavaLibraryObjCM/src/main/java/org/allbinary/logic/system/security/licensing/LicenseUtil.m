// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LicenseUtil.h"
#include "javax/microedition/lcdui/CommandListener.h"


static LicenseUtil* LicenseUtil_instance;

void LicenseUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseUtil_instance = ((LicenseUtil*) [((LicenseUtil*) [LicenseUtil alloc]) init]);
}

@implementation LicenseUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LicenseUtil*) getInstance {
        return (LicenseUtil_staticInit(), LicenseUtil_instance);
}


- (void) initMethod {
}


// synchronized
- (bool) isRunning {
        return false;
}


// synchronized
- (void) setRunning:(bool)running {
}


- (bool) shouldWait:(CommandListener*)commandListener {
        return [self isRunning];
}

@end

