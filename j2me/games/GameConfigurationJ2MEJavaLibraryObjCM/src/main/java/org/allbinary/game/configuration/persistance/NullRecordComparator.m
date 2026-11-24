// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"


NullRecordComparator* NullRecordComparator_NULL_RECORD_COMPARATOR;

void NullRecordComparator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullRecordComparator_NULL_RECORD_COMPARATOR = ((NullRecordComparator*) [((NullRecordComparator*) [NullRecordComparator alloc]) init]);
}

@implementation NullRecordComparator

- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) compare:(int8_t*)rec1 :(int8_t*)rec2 {
        return 0;
}

@end

