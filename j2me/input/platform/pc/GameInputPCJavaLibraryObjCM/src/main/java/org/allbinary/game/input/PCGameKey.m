// Generated Code Do Not Modify
#include "org/allbinary/game/input/PCGameKey.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void PCGameKey_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PCGameKey


- (instancetype) init:(int32_t)keyCode :(const char*)name {
        self = [super init:keyCode :name];
        int32_t id_ = [self getId];
        if (id_ >= 0) {
            [[InputFactory getInstance] add:id_ :self];
        }
    return self;
}


- (const char*) toString {
        return java_concat("PCGameKey: ", [super toString]);
}


+ (const char*) getString:(int32_t)keyCode {
        Input* input = [[InputFactory getInstance] getInstanceById:keyCode];
        if (input != nil) {
            return [input getName];
        } else {
            return [StringUtil getInstance]->EMPTY_STRING;
        }
}

@end

