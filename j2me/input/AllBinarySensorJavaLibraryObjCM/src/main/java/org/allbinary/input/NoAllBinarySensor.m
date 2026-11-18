// Generated Code Do Not Modify
#include "org/allbinary/input/NoAllBinarySensor.h"
#include "org/allbinary/input/AllBinarySensor.h"


static NoAllBinarySensor* NoAllBinarySensor_instance;

void NoAllBinarySensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoAllBinarySensor_instance = [((NoAllBinarySensor*) [NoAllBinarySensor alloc]) init];
}

@implementation NoAllBinarySensor


+ (NoAllBinarySensor*) getInstance {
        return (NoAllBinarySensor_staticInit(), NoAllBinarySensor_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}

@end

