// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/InputProbability.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"


int32_t InputProbability_INPUT_PROBABILITY;

void InputProbability_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputProbability_INPUT_PROBABILITY = [[SmallIntegerSingletonFactory getInstance] getAt:0];
}

@implementation InputProbability

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(int32_t**)likelyhoodIntegerArray :(int32_t*)repeatLikelyhoodIntegerArray :(int32_t)max :(TimeDelayHelper*)timeDelayHelper {
    self = [super init];
    [self initFields];
        self->likelyhoodIntegerArray = likelyhoodIntegerArray;
        self->repeatLikelyhoodIntegerArray = repeatLikelyhoodIntegerArray;
        self->max = max;
        self->timeDelayHelper = timeDelayHelper;
    return self;
}


- (int32_t**) getLikelyhoodIntegerArray {
        return self->likelyhoodIntegerArray;
}


- (int32_t*) getRepeatLikelyhoodIntegerArray {
        return self->repeatLikelyhoodIntegerArray;
}


- (int32_t) getMax {
        return self->max;
}


- (TimeDelayHelper*) getTimeDelayHelper {
        return self->timeDelayHelper;
}


- (ABHashtable*) toHashtable {
        ABHashtable* hashtable = [[StdUtil getInstance] createHashtable];
        [hashtable put:JAVA_BOX((InputProbability_staticInit(), InputProbability_INPUT_PROBABILITY)) :JAVA_BOX(self)];
        return hashtable;
}

@end

