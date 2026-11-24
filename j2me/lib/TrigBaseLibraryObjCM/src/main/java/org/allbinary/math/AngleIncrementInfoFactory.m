// Generated Code Do Not Modify
#include "org/allbinary/math/AngleIncrementInfoFactory.h"
#include "org/allbinary/math/AngleIncrementInfo.h"
#include "org/allbinary/math/AngleFactory.h"


static AngleIncrementInfoFactory* AngleIncrementInfoFactory_instance;

void AngleIncrementInfoFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AngleIncrementInfoFactory_instance = ((AngleIncrementInfoFactory*) [((AngleIncrementInfoFactory*) [AngleIncrementInfoFactory alloc]) init]);
}

@implementation AngleIncrementInfoFactory

- (void) initFields {
    self->angleIncrementInfo = ((AngleIncrementInfo**) java_array_new(sizeof(AngleIncrementInfo*), ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE)));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AngleIncrementInfoFactory*) getInstance {
        return (AngleIncrementInfoFactory_staticInit(), AngleIncrementInfoFactory_instance);
}


- (AngleIncrementInfo*) getAt:(int16_t)angleIncrement {
        int32_t halfAngleIncrement = (((int32_t) angleIncrement) >> 1);
        AngleIncrementInfo* angleIncrementInfo = nullptr;
        AngleIncrementInfo* angleIncrementInfoCanBeNull = self->angleIncrementInfo[halfAngleIncrement];
        if (angleIncrementInfoCanBeNull == nil) {
            angleIncrementInfo = ((AngleIncrementInfo*) [((AngleIncrementInfo*) [AngleIncrementInfo alloc]) init:angleIncrement]);
            self->angleIncrementInfo[halfAngleIncrement] = angleIncrementInfo;
            return angleIncrementInfo;
        } else {
            angleIncrementInfo = angleIncrementInfoCanBeNull;
        }
        return angleIncrementInfo;
}

@end

