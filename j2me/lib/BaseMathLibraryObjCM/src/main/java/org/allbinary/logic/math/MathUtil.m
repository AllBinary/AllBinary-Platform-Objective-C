// Generated Code Do Not Modify
#include "org/allbinary/logic/math/MathUtil.h"


static MathUtil* MathUtil_instance;

void MathUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MathUtil_instance = [((MathUtil*) [MathUtil alloc]) init];
}

@implementation MathUtil

- (void) initFields {
    self->ACCURACY = 100;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (MathUtil*) getInstance {
        return (MathUtil_staticInit(), MathUtil_instance);
}


- (int32_t) getTotalDigits:(int32_t)digits {
        int32_t total = 0;
        while (digits > 0) {
            digits = digits / 10;
            total++;
        }
        return total;
}


- (int32_t) sqrt:(int32_t)value {
        if (value <= 1) {
            return value;
        }
        int32_t accumulated = value >> 1;
        int32_t result = (accumulated + (value / accumulated)) >> 1;
        do {
            accumulated = result;
            result = (accumulated + (value / accumulated)) >> 1;
        } while (accumulated > result);
        return accumulated;
}


- (double) sqrtd:(int32_t)x {
        if (x == 0) {
            return ((double) 0.0f);
        }
        if (x < 0) {
            return ((double) (-1.0f));
        }
        double result = ((double) x);
        for (int32_t index = 0; index < self->ACCURACY; index++) {
            result = (result + (((double) x) / result)) / 2.0;
        }
        return result;
}


- (int32_t) abs:(int32_t)value {
        return ((value < 0) ? -value : value);
}


- (int64_t) abslong:(int64_t)value {
        return ((value < 0LL) ? -value : value);
}


- (int32_t) min:(int32_t)value :(int32_t)value2 {
        return ((value <= value2) ? value : value2);
}


- (int32_t) max:(int32_t)value :(int32_t)value2 {
        return ((value >= value2) ? value : value2);
}

@end

