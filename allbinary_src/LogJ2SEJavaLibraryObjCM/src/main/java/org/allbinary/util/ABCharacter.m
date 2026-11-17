// Generated Code Do Not Modify
#include "org/allbinary/util/ABCharacter.h"



void ABCharacter_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABCharacter

- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) toString:(uint16_t)ch {
        return java_string_of(ch);
}

@end

