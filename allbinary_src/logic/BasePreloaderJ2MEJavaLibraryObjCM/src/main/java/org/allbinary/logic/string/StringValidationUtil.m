// Generated Code Do Not Modify
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"


static StringValidationUtil* StringValidationUtil_instance;

void StringValidationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StringValidationUtil_instance = ((StringValidationUtil*) [((StringValidationUtil*) [StringValidationUtil alloc]) init]);
}

@implementation StringValidationUtil

- (void) initFields {
    self->stringUtil = [StringUtil getInstance];
    self->tsUtil = [TsUtil getInstance];
}


+ (StringValidationUtil*) getInstance {
        return (StringValidationUtil_staticInit(), StringValidationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) containsSpaces:(const char*)value {
        if (java_string_indexOf(value, u' ') >= 0) {
            return true;
        }
        return false;
}


- (bool) isNumber:(const char*)value {
        int32_t numberOfDecimalPoints = 0;
        for (int32_t index = 0; index < ((int32_t) strlen(value)); index++) {
            uint16_t digit = ((uint16_t) value[index]);
            if (![self isNumberFromChar:digit] && digit != u'.') {
                return false;
            }
            if (digit == u'.') {
                numberOfDecimalPoints++;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
        }
        return true;
}


- (bool) isNumberFromChar:(uint16_t)digit {
        if (digit != u'0' && digit != u'1' && digit != u'2' && digit != u'3' && digit != u'4' && digit != u'5' && digit != u'6' && digit != u'7' && digit != u'8' && digit != u'9') {
            return false;
        }
        return true;
}


- (bool) isValidRequired:(const char*)value :(int32_t)min :(int32_t)max {
        if (((int32_t) strlen(value)) < min || ((int32_t) strlen(value)) > max) {
            return false;
        }
        return true;
}


- (bool) isValidRequiredNumber:(const char*)value :(int32_t)min :(int32_t)max {
        if ([self isEmpty:value] || ((int32_t) strlen(value)) < min || ((int32_t) strlen(value)) > max) {
            return false;
        }
        if (![self isNumber:value]) {
            return false;
        }
        return true;
}


- (bool) isValidNotRequired:(const char*)value :(int32_t)min :(int32_t)max {
        if (((int32_t) strlen(value)) > 0) {
            if (((int32_t) strlen(value)) < min || ((int32_t) strlen(value)) > max) {
                return false;
            }
        }
        return true;
}


- (bool) isValidNotRequiredNumber:(const char*)value :(int32_t)min :(int32_t)max {
        if (((int32_t) strlen(value)) > 0) {
            if ([self->tsUtil compareTo:value :self->stringUtil->NULL_STRING] == 0 || ((int32_t) strlen(value)) < min || ((int32_t) strlen(value)) > max) {
                return false;
            }
            if (![self isNumber:value]) {
                return false;
            }
        }
        return true;
}


- (bool) isEmpty:(const char*)string {
        if ([self->tsUtil compareTo:string :self->stringUtil->NULL_STRING] != 0 && [self->tsUtil compareTo:string :self->stringUtil->EMPTY_STRING] != 0) {
            return false;
        } else {
            return true;
        }
}

@end

