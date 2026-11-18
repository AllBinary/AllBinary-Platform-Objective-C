// Generated Code Do Not Modify
#include "org/allbinary/game/input/J2MEGameKey.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"



void J2MEGameKey_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation J2MEGameKey


- (instancetype) init:(int32_t)key :(const char*)keyName {
        self = [super init:key :keyName];
        int32_t id_ = [self getId];
        if (id_ >= 0) {
            InputFactory* inputFactory = [InputFactory getInstance];
            [inputFactory add:id_ :self];
        }
    return self;
}


- (const char*) toString {
        return [[[[((StringMaker*) [StringMaker alloc]) init] append:"J2MEGameKey: "] append:[super toString]] toString];
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

