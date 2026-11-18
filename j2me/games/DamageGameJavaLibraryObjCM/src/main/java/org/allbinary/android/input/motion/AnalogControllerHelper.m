// Generated Code Do Not Modify
#include "org/allbinary/android/input/motion/AnalogControllerHelper.h"
#include "org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/android/input/motion/AnalogControllerConfigurationFactory.h"



void AnalogControllerHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AnalogControllerHelper

- (void) initFields {
    
    self->SCALE_VALUE = [AnalogControllerConfigurationFactory getInstance]->SCALE_VALUE;
    self->rightTimeElapsedHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    self->leftTimeElapsedHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    self->downTimeElapsedHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    self->upTimeElapsedHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
}


- (instancetype) init:(int32_t)reduceTimeFactor {
    self = [super init];
    [self initFields];
        self->reduceTimeFactor = reduceTimeFactor;
    return self;
}


// throws Exception
- (void) right:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue {
        self->rightTimeElapsedHelper->delay = ((self->SCALE_VALUE - xAnalogValue) >> self->reduceTimeFactor);
        if ([self->rightTimeElapsedHelper isTimeTNT]) {
            [collidableDestroyableDamageableLayer right];
        }
}


// throws Exception
- (void) left:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue {
        self->leftTimeElapsedHelper->delay = ((self->SCALE_VALUE + xAnalogValue) >> self->reduceTimeFactor);
        if ([self->leftTimeElapsedHelper isTimeTNT]) {
            [collidableDestroyableDamageableLayer left];
        }
}


// throws Exception
- (void) up:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue {
        self->upTimeElapsedHelper->delay = ((self->SCALE_VALUE - xAnalogValue) >> self->reduceTimeFactor);
        if ([self->upTimeElapsedHelper isTimeTNT]) {
            [collidableDestroyableDamageableLayer up];
        }
}


// throws Exception
- (void) down:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue {
        self->downTimeElapsedHelper->delay = ((self->SCALE_VALUE + xAnalogValue) >> self->reduceTimeFactor);
        if ([self->downTimeElapsedHelper isTimeTNT]) {
            [collidableDestroyableDamageableLayer down];
        }
}

@end

