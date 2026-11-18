// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"


NullRecordFilter* NullRecordFilter_NULL_RECORD_FILTER;

void NullRecordFilter_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullRecordFilter_NULL_RECORD_FILTER = [((NullRecordFilter*) [NullRecordFilter alloc]) init];
}

@implementation NullRecordFilter

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) matches:(int8_t*)candidate {
        return true;
}

@end

