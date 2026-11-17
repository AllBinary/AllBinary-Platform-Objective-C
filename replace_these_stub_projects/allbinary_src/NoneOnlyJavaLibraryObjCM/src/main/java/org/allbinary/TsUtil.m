// Generated Code Do Not Modify
#include "org/allbinary/TsUtil.h"


static TsUtil* TsUtil_instance;

void TsUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TsUtil_instance = [((TsUtil*) [TsUtil alloc]) init];
}

@implementation TsUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (TsUtil*) getInstance {
        return (TsUtil_staticInit(), TsUtil_instance);
}


- (int32_t) hashCode:(id)anyType {
        return [anyType hashCode];
}


// throws InterruptedException
- (void) waitFor:(id)any :(int64_t)timeoutMillis {
        id anyType = ((id) any);
        [anyType wait:timeoutMillis];
}


- (int8_t*) getRecord:(id)anyType :(int32_t)recordId {
        return ((int8_t*) java_array_new(sizeof(int8_t), 0));
}


- (int32_t) compareTo:(const char*)a :(const char*)b {
        return strcmp(a, b);
}


- (bool) equalIgnoreCase:(const char*)a :(const char*)b {
        return (strcasecmp(a, b) == 0);
}


- (bool) equalsNotstring:(id)anyType :(id)object2 {
        return [anyType equals:object2];
}


- (int32_t) toNumberFromChar:(uint16_t)value {
        return ((int32_t) value);
}


- (int32_t) toNumber:(int32_t)value {
        return value;
}


- (int8_t*) getByteArray:(const char*)string {
        return java_string_getBytes(string);
}


- (bool) isItemListener:(id)owner {
        return false;
}


- (void) printAvailableMethods:(id)anyType {
}


- (void) gc {
        ((void) 0);
}

@end

