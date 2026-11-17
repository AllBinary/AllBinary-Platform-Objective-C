// Generated Code Do Not Modify
#include "org/allbinary/logic/math/SmallLongFactory.h"


static SmallLongFactory* SmallLongFactory_instance;

void SmallLongFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SmallLongFactory_instance = [((SmallLongFactory*) [SmallLongFactory alloc]) init];
}

@implementation SmallLongFactory

- (void) initFields {
    self->NEGATIVE_MAX = 500;
    self->POSITIVE_MAX = 0x2D1;
    self->INTEGER_ARRAY = ((int64_t*) java_array_new(sizeof(int64_t), self->NEGATIVE_MAX + self->POSITIVE_MAX));
    self->STRING_ARRAY = ((const char**) java_array_new(sizeof(const char*), self->NEGATIVE_MAX + self->POSITIVE_MAX));
    self->MIN = 0;
    self->lastMin = 0;
    self->lastNegativeMin = 0;
}


+ (SmallLongFactory*) getInstance {
        return (SmallLongFactory_staticInit(), SmallLongFactory_instance);
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
        if (self->INTEGER_ARRAY[0] == nil) {
            if (self->lastMin < self->POSITIVE_MAX || self->lastNegativeMin < self->NEGATIVE_MAX) {
                for (int32_t index = self->POSITIVE_MAX - 1; index >= self->lastMin; index--) {
                    self->INTEGER_ARRAY[index + self->NEGATIVE_MAX] = index;
                }
                for (int32_t index = self->NEGATIVE_MAX - 1; index >= self->lastNegativeMin; index--) {
                    self->INTEGER_ARRAY[index] = -index;
                }
                self->lastMin = self->POSITIVE_MAX;
                self->lastNegativeMin = self->NEGATIVE_MAX;
            }
        }
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (int64_t) getInstanceNoThrow:(int64_t)index {
        if (index + ((int64_t) self->NEGATIVE_MAX) > ((int64_t) (java_array_length(self->INTEGER_ARRAY) - 1))) {
            return self->INTEGER_ARRAY[-1 + self->NEGATIVE_MAX];
        }
        return self->INTEGER_ARRAY[(((int32_t) index)) + self->NEGATIVE_MAX];
}


- (const char*) getString:(int32_t)index {
        int32_t i = index + self->NEGATIVE_MAX;
        if (self->STRING_ARRAY[i] == nil) {
            self->STRING_ARRAY[i] = [self->INTEGER_ARRAY[i] toString];
        }
        return self->STRING_ARRAY[i];
}

@end

