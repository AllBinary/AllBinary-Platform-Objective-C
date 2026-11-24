// Generated Code Do Not Modify
#include "org/allbinary/input/AllBinarySensor.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/AllBinarySensorListener.h"


AllBinarySensor* AllBinarySensor_NULL_ALLBINARY_SENSOR;
static int32_t AllBinarySensor_max = 100;

void AllBinarySensor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinarySensor_NULL_ALLBINARY_SENSOR = ((AllBinarySensor*) [((AllBinarySensor*) [AllBinarySensor alloc]) init]);
}

@implementation AllBinarySensor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod {
}


// throws Exception
- (void) update {
}


+ (void) setMax:(int32_t)max {
        AllBinarySensor_max = max;
}


+ (int32_t) getMax {
        return AllBinarySensor_max;
}


- (int32_t) getId {
        return [AllBinarySensor getMax];
}


- (void) shutdown {
        [self->logUtil putF:self->commonStrings->START :self :"shutdown"];
}


- (void) onSensorChange {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
}

@end

