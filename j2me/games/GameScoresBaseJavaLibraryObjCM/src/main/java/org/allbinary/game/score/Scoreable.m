// Generated Code Do Not Modify
#include "org/allbinary/game/score/Scoreable.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/game/score/ScoreableInterface.h"


int32_t Scoreable_ID;

void Scoreable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Scoreable_ID = [[SmallIntegerSingletonFactory getInstance] getAt:3];
}

@implementation Scoreable

- (void) initFields {
    
}


- (instancetype) init:(int32_t)points {
    self = [super init];
    [self initFields];
        self->points = points;
    return self;
}


- (void) addPoints:(int32_t)points {
        self->points += points;
}


- (void) removePoints:(int32_t)points {
        self->points -= points;
}


- (void) setPoints:(int32_t)points {
        self->points = points;
}


- (int32_t) getPoints {
        return self->points;
}

@end

