// Generated Code Do Not Modify
#include "org/allbinary/KotlinUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void KotlinUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KotlinUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (bool) isKotlin {
        return false;
}


+ (const char*) getShortName {
        return [StringUtil getInstance]->EMPTY_STRING;
}

@end

