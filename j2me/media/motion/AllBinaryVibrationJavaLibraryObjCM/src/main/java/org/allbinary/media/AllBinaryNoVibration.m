// Generated Code Do Not Modify
#include "org/allbinary/media/AllBinaryNoVibration.h"
#include "org/allbinary/media/AllBinaryVibrationME.h"


AllBinaryVibrationME* AllBinaryNoVibration_NO_VIBRATION;

void AllBinaryNoVibration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryNoVibration_NO_VIBRATION = [((AllBinaryNoVibration*) [AllBinaryNoVibration alloc]) init];
}

@implementation AllBinaryNoVibration

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) vibrate:(int32_t)duration :(int32_t)type :(int32_t)volume {
}

@end

