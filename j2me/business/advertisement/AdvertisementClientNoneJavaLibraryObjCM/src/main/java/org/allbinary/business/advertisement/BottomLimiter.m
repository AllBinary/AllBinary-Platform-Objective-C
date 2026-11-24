// Generated Code Do Not Modify
#include "org/allbinary/business/advertisement/BottomLimiter.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"


static BottomLimiter* BottomLimiter_instance;

void BottomLimiter_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BottomLimiter_instance = ((BottomLimiter*) [((BottomLimiter*) [BottomLimiter alloc]) init]);
}

@implementation BottomLimiter

- (void) initFields {
    self->bottom = 0;
    self->deltaY = 0;
    self->lower = 0;
    self->higher = 0;
}


+ (BottomLimiter*) getInstance {
        return (BottomLimiter_staticInit(), BottomLimiter_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod:(int32_t)lower :(int32_t)higher {
        self->lower = lower;
        self->higher = higher;
}


- (void) update {
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        GameAdState* gameAdState = [[GameAdStateFactory getInstance] getCurrentInstance];
        if ([gameAdState isShowingAt]) {
            self->deltaY = self->higher;
        } else {
            self->deltaY = self->lower;
        }
        self->bottom = [displayInfo getLastHeight] - self->deltaY;
}


- (int32_t) getDeltaY {
        return self->deltaY;
}


- (int32_t) getBottom {
        return self->bottom;
}

@end

