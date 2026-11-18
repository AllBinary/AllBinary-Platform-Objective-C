// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/crypt/jcehelper/NoCrypt.h"



void NoCrypt_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoCrypt

- (instancetype) init {
    self = [super init];
    return self;
}


- (int8_t*) encrypt:(int8_t*)array {
        return array;
}


- (int8_t*) decrypt:(int8_t*)array {
        return array;
}

@end

