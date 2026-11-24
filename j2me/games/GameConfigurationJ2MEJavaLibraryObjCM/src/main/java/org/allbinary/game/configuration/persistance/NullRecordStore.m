// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"


NullRecordStore* NullRecordStore_NULL_RECORD_STORE;

void NullRecordStore_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullRecordStore_NULL_RECORD_STORE = ((NullRecordStore*) [((NullRecordStore*) [NullRecordStore alloc]) init]);
}

@implementation NullRecordStore

- (instancetype) init {
    self = [super init];
    return self;
}

@end

