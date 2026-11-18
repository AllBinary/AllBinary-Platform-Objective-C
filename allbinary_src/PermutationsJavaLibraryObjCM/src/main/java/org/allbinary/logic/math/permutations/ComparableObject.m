// Generated Code Do Not Modify
#include "org/allbinary/logic/math/permutations/ComparableObject.h"
#include "org/allbinary/TsUtil.h"



void ComparableObject_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ComparableObject

- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) compareTo:(id)anyType {
        if ([[TsUtil getInstance] hashCode:self] < [[TsUtil getInstance] hashCode:anyType]) {
            return -1;
        } else if ([[TsUtil getInstance] hashCode:self] > [[TsUtil getInstance] hashCode:anyType]) {
            return 1;
        }
        return 0;
}

@end

