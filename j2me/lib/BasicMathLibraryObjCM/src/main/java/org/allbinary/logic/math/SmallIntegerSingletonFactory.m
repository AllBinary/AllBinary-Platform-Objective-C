// Generated Code Do Not Modify
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"


static SmallIntegerSingletonFactory* SmallIntegerSingletonFactory_instance;

void SmallIntegerSingletonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SmallIntegerSingletonFactory_instance = [((SmallIntegerSingletonFactory*) [SmallIntegerSingletonFactory alloc]) init];
}

@implementation SmallIntegerSingletonFactory

- (void) initFields {
    self->NEGATIVE_MAX = 500;
    self->POSITIVE_MAX = 0x2D1;
    self->INTEGER_ARRAY = ((int32_t*) java_array_new(sizeof(int32_t), self->NEGATIVE_MAX + self->POSITIVE_MAX));
    self->STRING_ARRAY = ((const char**) java_array_new(sizeof(const char*), self->NEGATIVE_MAX + self->POSITIVE_MAX));
    self->MIN = 0;
    self->lastMin = 0;
    self->lastNegativeMin = 0;
}


+ (SmallIntegerSingletonFactory*) getInstance {
        return (SmallIntegerSingletonFactory_staticInit(), SmallIntegerSingletonFactory_instance);
}


- (int32_t) getMin {
        int32_t minAllowed = [self getMinAllowed];
        if (self->MIN <= minAllowed) {
            if ([J2MEUtil isJ2ME]) {
            } else if ([AndroidUtil isAndroid]) {
                LogUtil* logUtil = [LogUtil getInstance];
                [logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Android InputFactory was initialized before GameMidlet: "] appendint:self->MIN] toString] :self :"getMin"];
                [self initWithRange:0x291 :6];
            } else {
                LogUtil* logUtil = [LogUtil getInstance];
                [logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"InputFactory was initialized before GameMidlet or KeyFactoryInitializer - Currently this is occurs on JS build by TouchMotionGestureFactory constructor: "] appendint:self->MIN] toString] :self :"getMin"];
                [self initWithRange:0x2D0 :6];
            }
        }
        if (self->MIN <= minAllowed) {
            LogUtil* logUtil = [LogUtil getInstance];
            [logUtil put:"This means you loaded the InputFactory before determining the platform input size requirements." :self :"getMin" :java_exception_new("Exception", "")];
        }
        return self->MIN;
}


- (int32_t) getMinAllowed {
        if ([J2MEUtil isJ2ME]) {
            return 0;
        } else {
            if ([AndroidUtil isAndroid]) {
                return 0x101;
            } else {
                return 23;
            }
        }
}


- (void) initWithRange:(int32_t)value :(int32_t)negativeValue {
        for (int32_t index = value - 1; index >= self->lastMin; index--) {
            self->INTEGER_ARRAY[index + self->NEGATIVE_MAX] = index;
        }
        for (int32_t index = negativeValue - 1; index >= self->lastNegativeMin; index--) {
            self->INTEGER_ARRAY[index] = -index;
        }
        if (self->lastMin < value) {
            self->lastMin = value;
            self->MIN = value;
        }
        if (self->lastNegativeMin < negativeValue) {
            self->lastNegativeMin = negativeValue;
        }
}


- (void) init_ {
        if (self->lastMin < self->POSITIVE_MAX || self->lastNegativeMin < self->NEGATIVE_MAX) {
            for (int32_t index = self->POSITIVE_MAX - 1; index >= self->lastMin; index--) {
                self->INTEGER_ARRAY[index + self->NEGATIVE_MAX] = index;
            }
            for (int32_t index = self->NEGATIVE_MAX - 1; index >= self->lastNegativeMin; index--) {
                self->INTEGER_ARRAY[index] = -index;
            }
            self->lastMin = self->POSITIVE_MAX;
            self->MIN = self->lastMin;
            self->lastNegativeMin = self->NEGATIVE_MAX;
        }
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self initWithRange:23 :0];
    return self;
}


- (int32_t) getAt:(int32_t)index {
        return self->INTEGER_ARRAY[index + self->NEGATIVE_MAX];
}


- (int32_t) getAtNoThrow:(int32_t)index {
        if (index + self->NEGATIVE_MAX > java_array_length(self->INTEGER_ARRAY) - 1) {
            return self->INTEGER_ARRAY[-1 + self->NEGATIVE_MAX];
        }
        return self->INTEGER_ARRAY[index + self->NEGATIVE_MAX];
}


- (int32_t) createInstance:(int32_t)index {
        int32_t integer = [self getAt:index];
        if (integer == nil) {
            integer = index;
        }
        return integer;
}


- (const char*) getString:(int32_t)index {
        int32_t i = index + self->NEGATIVE_MAX;
        if (self->STRING_ARRAY[i] == nil) {
            self->STRING_ARRAY[i] = [self->INTEGER_ARRAY[i] toString];
        }
        return self->STRING_ARRAY[i];
}

@end

