// Generated Code Do Not Modify
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#include "org/allbinary/business/init/LicenseInitInfo.h"


static LicenseInitInfoUtil* LicenseInitInfoUtil_instance;

void LicenseInitInfoUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseInitInfoUtil_instance = ((LicenseInitInfoUtil*) [((LicenseInitInfoUtil*) [LicenseInitInfoUtil alloc]) init]);
}

@implementation LicenseInitInfoUtil

- (void) initFields {
    self->INITFILENAME = "licenseinitdata.dat";
    self->ABOUT = "about";
    self->PRIVACY_POLICY = "privacy_policy";
    self->OFFICIAL_ALLBINARY_SERVICES_SERVER = "https://services.allbinary.com/LicServ/serverssl.php";
}


+ (LicenseInitInfoUtil*) getInstance {
        return (LicenseInitInfoUtil_staticInit(), LicenseInitInfoUtil_instance);
}


// synchronized
- (void) setFilePath:(const char*)filePath {
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
// synchronized
- (void) write:(LicenseInitInfo*)initData {
}


// throws Exception
// synchronized
- (LicenseInitInfo*) read {
        return [self readAgain:0];
}


// throws Exception
// synchronized
- (LicenseInitInfo*) readAgain:(int32_t)initializeCounter {
        LicenseInitInfo* licenseInitInfo = ((LicenseInitInfo*) [((LicenseInitInfo*) [LicenseInitInfo alloc]) init]);
        [licenseInitInfo clearServers];
        [licenseInitInfo addServer:self->OFFICIAL_ALLBINARY_SERVICES_SERVER];
        return licenseInitInfo;
}

@end

