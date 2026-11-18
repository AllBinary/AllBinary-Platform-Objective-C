// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/SpecialDemoGameMidlet.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformationFactory.h"
#include "org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil.h"
#include "org/allbinary/game/midlet/DemoGameMidlet.h"
#include "org/allbinary/game/midlet/LicenseLoadingType.h"
#include "org/allbinary/game/midlet/LicensedDemoSetupFactory.h"
#include "org/allbinary/game/midlet/LicenseCheckRunnableFactory.h"



void SpecialDemoGameMidlet_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpecialDemoGameMidlet


- (instancetype) init:(ClientInformationFactory*)clientInformationFactory :(LicenseLoadingType*)licenseLoadingType :(LicensedDemoSetupFactory*)demoSetupFactory :(LicenseCheckRunnableFactory*)licenseCheckRunnableFactory {
        self = [super init:clientInformationFactory];
    return self;
}


- (void) initView {
}


- (void) preInit {
        [[((LicenseServerInitFileUtil*) [LicenseServerInitFileUtil alloc]) init] init_];
}

@end

