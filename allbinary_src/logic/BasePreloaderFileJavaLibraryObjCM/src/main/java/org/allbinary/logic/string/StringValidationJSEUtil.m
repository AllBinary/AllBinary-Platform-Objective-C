// Generated Code Do Not Modify
#include "org/allbinary/logic/string/StringValidationJSEUtil.h"



void StringValidationJSEUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StringValidationJSEUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isBlank:(const char*)string {
        int32_t len = ((int32_t) strlen(string));
        for (int32_t i = 0; i < len; i++) {
            uint16_t c = ((uint16_t) string[i]);
            if (isspace(c) == false) {
                return false;
            }
        }
        return true;
}

@end

