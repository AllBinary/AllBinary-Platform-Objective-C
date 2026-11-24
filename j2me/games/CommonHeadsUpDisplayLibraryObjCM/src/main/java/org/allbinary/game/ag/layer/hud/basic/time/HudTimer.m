// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/time/HudTimer.h"
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#if __has_include("org/allbinary/logic/math/PrimitiveLongSingleton.h")
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#endif



void HudTimer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HudTimer

- (void) initFields {
    self->startTime = ((int64_t) (-1));
    self->hundredthTime = 0;
    
    self->modifier = 0;
    self->hundrethsString = [PrimitiveLongSingleton getInstance]->ZERO;
    self->totalDigits = 1;
    
    self->MAX = ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'L', u'O', u'L' }) / sizeof(uint16_t), (uint16_t[]){ u'L', u'O', u'L' }));
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
}


- (instancetype) init:(int32_t)maxTime {
    self = [super init];
    [self initFields];
        self->primitiveLongUtil = [PrimitiveLongUtil createPowerOfTen:maxTime];
        self->maxTime = ((int64_t) maxTime);
    return self;
}


- (void) start {
        self->hundredthTime = 0LL;
        self->startTime = self->gameTickTimeDelayHelper->startTime;
}


- (int64_t) get {
        return self->hundredthTime;
}


- (void) update {
        int64_t lastLowerTime = self->hundredthTime;
        int64_t currentTime = ((self->modifier + self->gameTickTimeDelayHelper->startTime) - self->startTime);
        if (currentTime < 0LL) {
            currentTime = 0LL;
        }
        self->hundredthTime = currentTime / 100LL;
        if (self->hundredthTime >= self->maxTime) {
            if (self->startTime > 0LL) {
                self->hundrethsString = self->MAX;
            }
        } else if (lastLowerTime != self->hundredthTime) {
            self->hundrethsString = [self->primitiveLongUtil getCharArray:((int32_t) self->hundredthTime)];
            self->totalDigits = [self->primitiveLongUtil getCurrentTotalDigits];
        }
}


- (void) reduce:(int32_t)value {
        self->modifier -= ((int64_t) value);
}


- (void) add:(int32_t)value {
        self->modifier += ((int64_t) value);
}


- (uint16_t*) getTimeChars {
        return self->hundrethsString;
}


- (int32_t) getCurrentTotalDigits {
        return self->totalDigits;
}

@end

