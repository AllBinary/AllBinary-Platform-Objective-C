// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/DisplayPointScalar.h"
#include "org/allbinary/graphics/GPoint.h"


static DisplayPointScalar* DisplayPointScalar_instance;

void DisplayPointScalar_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DisplayPointScalar_instance = [((DisplayPointScalar*) [DisplayPointScalar alloc]) init];
}

@implementation DisplayPointScalar


+ (DisplayPointScalar*) getInstance {
        return (DisplayPointScalar_staticInit(), DisplayPointScalar_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) processX:(int32_t)value {
        return value;
}


- (int32_t) processY:(int32_t)value {
        return value;
}


- (GPoint*) process:(GPoint*)point {
        return point;
}

@end

