// Generated Code Do Not Modify
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/logic/math/MathUtil.h"



void PrimitiveLongUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PrimitiveLongUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
    
    
    self->currentTotalDigits = 0;
    self->primitiveLongSingleton = [PrimitiveLongSingleton getInstance];
}


+ (PrimitiveLongUtil*) createPowerOfTen:(int32_t)powerOfTen {
        PrimitiveLongUtil* primitiveLongUtil = [((PrimitiveLongUtil*) [PrimitiveLongUtil alloc]) init:powerOfTen :[NullUtil getInstance]->NULL_OBJECT];
        if (powerOfTen % 10 != 0) {
            LogUtil* logUtil = [LogUtil getInstance];
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [logUtil put:commonStrings->EXCEPTION :primitiveLongUtil :commonStrings->CONSTRUCTOR :java_exception_new("Exception", "Max must be power of 10")];
        }
        return primitiveLongUtil;
}


- (instancetype) init:(int32_t)powerOfTen :(id)unused {
    self = [super init];
    [self initFields];
        self->maxDigits = [[MathUtil getInstance] getTotalDigits:powerOfTen];
        self->powerOfTen = powerOfTen;
        self->maxValue = (powerOfTen * 10) - 1;
        self->charArray = ((uint16_t*) java_array_new(sizeof(uint16_t), self->maxDigits));
    return self;
}


- (uint16_t*) getCharArray:(int32_t)value {
        if (value < 10) {
            [self setCurrentTotalDigits:1];
            return self->primitiveLongSingleton->NUMBER_CHAR_ARRAYS[value];
        }
        if (value > self->maxValue) {
            [self setCurrentTotalDigits:3];
            return self->primitiveLongSingleton->UNK;
        }
        int32_t index = 0;
        int32_t div = self->powerOfTen;
        int32_t lastValue = 0;
        while (div >= 1) {
            int32_t digit = (value - lastValue) / div;
            if (digit >= 0 && digit < 10) {
                if (digit == 0 && index == 0) {
                } else {
                    self->charArray[index++] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[digit];
                }
                lastValue += digit * div;
            }
            div = div / 10;
        }
        [self setCurrentTotalDigits:index];
        return self->charArray;
}


- (void) setCurrentTotalDigits:(int32_t)currentTotalDigits {
        self->currentTotalDigits = currentTotalDigits;
}


- (int32_t) getCurrentTotalDigits {
        return self->currentTotalDigits;
}


- (int32_t) getMaxDigits {
        return self->maxDigits;
}

@end

