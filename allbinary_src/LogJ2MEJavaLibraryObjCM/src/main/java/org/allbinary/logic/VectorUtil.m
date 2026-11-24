// Generated Code Do Not Modify
#include "org/allbinary/logic/VectorUtil.h"


static VectorUtil* VectorUtil_instance;

void VectorUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VectorUtil_instance = ((VectorUtil*) [((VectorUtil*) [VectorUtil alloc]) init]);
}

@implementation VectorUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (VectorUtil*) getInstance {
        return (VectorUtil_staticInit(), VectorUtil_instance);
}


- (int32_t) getSize:(id)anyType {
        Vector* vector = ((Vector*) anyType);
        return [vector size];
}


- (id) elementAt:(id)anyType :(int32_t)index {
        Vector* vector = ((Vector*) anyType);
        return [vector elementAt:index];
}

@end

