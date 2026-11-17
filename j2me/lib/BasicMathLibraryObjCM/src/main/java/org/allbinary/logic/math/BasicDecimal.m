// Generated Code Do Not Modify
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/math/ScaleFactorFactory.h"


BasicDecimal* BasicDecimal_ZERO_BIGDECIMAL;

void BasicDecimal_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicDecimal_ZERO_BIGDECIMAL = [((BasicDecimal*) [BasicDecimal alloc]) init:0];
}

@implementation BasicDecimal

- (void) initFields {
    
    self->scaled = 0;
    self->factor = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_FACTOR;
    self->factorValue = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_VALUE;
}


+ (BasicDecimal*) createBigDecimal:(BasicDecimal*)bigDecimal {
        return [((BasicDecimal*) [BasicDecimal alloc]) init:[bigDecimal getUnscaled]];
}


- (instancetype) init:(int64_t)units {
    self = [super init];
    [self initFields];
        self->units = units;
        [self updateScaled];
    return self;
}


- (void) setint:(int32_t)value {
        self->units = ((int64_t) value);
        [self updateScaled];
}


- (void) setlong:(int64_t)value {
        self->units = value;
        [self updateScaled];
}


- (void) set:(BasicDecimal*)bigDecimal {
        self->units = [bigDecimal getUnscaled];
        [self updateScaled];
}


- (void) addint:(int32_t)value {
        self->units = self->units + ((int64_t) value);
        [self updateScaled];
}


- (void) addlong:(int64_t)value {
        self->units = self->units + value;
        [self updateScaled];
}


- (void) add:(BasicDecimal*)bigDecimal {
        self->units = self->units + [bigDecimal getUnscaled];
        [self updateScaled];
}


- (void) subtractint:(int32_t)value {
        self->units = self->units - ((int64_t) value);
        [self updateScaled];
}


- (void) subtractlong:(int64_t)value {
        self->units = self->units - value;
        [self updateScaled];
}


- (void) subtract:(BasicDecimal*)bigDecimal {
        self->units = self->units - [bigDecimal getUnscaled];
        [self updateScaled];
}


- (void) multiplyint:(int32_t)value {
        self->units = self->units * ((int64_t) value);
        [self updateScaled];
}


- (void) multiplylong:(int64_t)value {
        self->units = self->units * value;
        [self updateScaled];
}


- (void) multiply:(BasicDecimal*)bigDecimal {
        self->units = self->units * [bigDecimal getUnscaled];
        [self updateScaled];
}


- (void) divideint:(int32_t)value {
        self->units = self->units / ((int64_t) value);
        [self updateScaled];
}


- (void) dividelong:(int64_t)value {
        self->units = self->units / value;
        [self updateScaled];
}


- (void) divide:(BasicDecimal*)bigDecimal {
        self->units = self->units / [bigDecimal getUnscaled];
        [self updateScaled];
}


- (int64_t) getUnscaled {
        return self->units;
}


- (void) updateScaled {
        self->scaled = ((int32_t) (self->units / ((int64_t) self->factorValue)));
}


- (int32_t) getScaled {
        return self->scaled;
}


- (const char*) toString {
        return java_string_of(self->units);
}


- (int32_t) getScaledFactor {
        return self->factor;
}


- (int32_t) getScaledFactorValue {
        return self->factorValue;
}

@end

