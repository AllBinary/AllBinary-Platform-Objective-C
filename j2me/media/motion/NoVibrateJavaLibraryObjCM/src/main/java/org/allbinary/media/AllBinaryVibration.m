// Generated Code Do Not Modify
#include "org/allbinary/media/AllBinaryVibration.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/media/AllBinaryVibrationME.h"
#include "org/allbinary/media/AllBinaryNoVibration.h"
#if __has_include("org/allbinary/game/configuration/GameConfigurationCentral.h")
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#endif


static AllBinaryVibrationME* AllBinaryVibration_VIBRATION;

void AllBinaryVibration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryVibration_VIBRATION = (AllBinaryNoVibration_staticInit(), AllBinaryNoVibration_NO_VIBRATION);
}

@implementation AllBinaryVibration


- (instancetype) init {
    self = [super init];
    return self;
}


+ (AllBinaryVibrationME*) getInstance {
        return (AllBinaryVibration_staticInit(), AllBinaryVibration_VIBRATION);
}


+ (void) initMethod {
        if (((int32_t) ([[GameConfigurationCentral getInstance]->VIBRATION getValue])) == 0) {
            AllBinaryVibration_VIBRATION = (AllBinaryNoVibration_staticInit(), AllBinaryNoVibration_NO_VIBRATION);
        } else {
            AllBinaryVibration_VIBRATION = ((AllBinaryVibration*) [((AllBinaryVibration*) [AllBinaryVibration alloc]) init]);
        }
}


- (void) vibrate:(int32_t)duration :(int32_t)type :(int32_t)volume {
}

@end

