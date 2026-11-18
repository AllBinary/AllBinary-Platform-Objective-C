// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/event/GameInitializedEvent.h"
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"



void GameInitializedEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInitializedEvent

- (void) initFields {
    self->resourceLoadingLevel = [ResourceLoadingLevelFactory getInstance]->LEVEL;
    self->level = 0;
}


- (instancetype) init:(id)anyType {
        self = [super init:anyType];
        [self initFields];
    return self;
}


- (void) setLevel:(int32_t)level {
        self->level = level;
        self->resourceLoadingLevel = [ResourceLoadingLevelFactory getInstance]->LEVEL;
}


- (int32_t) getLevel {
        return self->level;
}


- (void) setResourceLoadingLevel:(ResourceLoadingLevel*)resourceLoadingLevel {
        self->resourceLoadingLevel = resourceLoadingLevel;
        self->level = [self->resourceLoadingLevel getLevel];
}


- (ResourceLoadingLevel*) getResourceLoadingLevel {
        return self->resourceLoadingLevel;
}

@end

