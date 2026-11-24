// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/LicenseLevelUtil.h"


static LicenseLevelUtil* LicenseLevelUtil_instance;

void LicenseLevelUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseLevelUtil_instance = ((LicenseLevelUtil*) [((LicenseLevelUtil*) [LicenseLevelUtil alloc]) init]);
}

@implementation LicenseLevelUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LicenseLevelUtil*) getInstance {
        return (LicenseLevelUtil_staticInit(), LicenseLevelUtil_instance);
}


- (int32_t) getMaxLevel:(int32_t)maxLevel :(int32_t)demoLevel {
        return demoLevel;
}

@end

