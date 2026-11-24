// Generated Code Do Not Modify
#include "org/allbinary/logic/math/J2SEMath.h"


static J2SEMath* J2SEMath_instance;

void J2SEMath_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    J2SEMath_instance = ((J2SEMath*) [((J2SEMath*) [J2SEMath alloc]) init]);
}

@implementation J2SEMath

- (instancetype) init {
    self = [super init];
    return self;
}


+ (J2SEMath*) getInstance {
        return (J2SEMath_staticInit(), J2SEMath_instance);
}


- (int32_t) round:(float)value {
        return ((int64_t) llround(value));
}


- (float) abs:(float)value {
        return ((value < 0.0f) ? -value : value);
}


- (double) absdouble:(double)value {
        return ((value < 0.0) ? -value : value);
}

@end

