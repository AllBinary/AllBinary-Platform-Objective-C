// Generated Code Do Not Modify
#include "org/allbinary/business/advertisement/AdConfiguration.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/game/state/GameState.h"



void AdConfiguration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AdConfiguration

- (void) initFields {
    
    
    
}


- (instancetype) init:(id*)advertIdArray {
    self = [super init];
    [self initFields];
        self->INNERACTIVE = ((const char*) advertIdArray[0]);
        self->ADMOB = ((const char*) advertIdArray[1]);
        self->LEADBOLT = ((const char*) advertIdArray[2]);
    return self;
}


- (Direction**) getValidAdSpots {
        return ((Direction**) java_array_new(sizeof(Direction*), 0));
}


- (void) process:(GameState*)gameState {
}


- (void) processDemo:(int32_t)state {
}


- (void) setShowAds {
}


- (void) setToggleAds:(bool)showAds {
}


- (bool) isShowAds {
        return true;
}

@end

