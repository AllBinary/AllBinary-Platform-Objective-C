// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"


static GameTickDisplayInfoSingleton* GameTickDisplayInfoSingleton_instance;

void GameTickDisplayInfoSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameTickDisplayInfoSingleton_instance = [((GameTickDisplayInfoSingleton*) [GameTickDisplayInfoSingleton alloc]) init];
}

@implementation GameTickDisplayInfoSingleton

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->lastWidth = [self->displayInfoSingleton getLastWidth];
    self->lastHeight = [self->displayInfoSingleton getLastHeight];
    self->lastHalfWidth = [self->displayInfoSingleton getLastHalfWidth];
    self->lastHalfHeight = [self->displayInfoSingleton getLastHalfHeight];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameTickDisplayInfoSingleton*) getInstance {
        return (GameTickDisplayInfoSingleton_staticInit(), GameTickDisplayInfoSingleton_instance);
}


- (void) update {
        self->lastWidth = [self->displayInfoSingleton getLastWidth];
        self->lastHeight = [self->displayInfoSingleton getLastHeight];
        self->lastHalfWidth = [self->displayInfoSingleton getLastHalfWidth];
        self->lastHalfHeight = [self->displayInfoSingleton getLastHalfHeight];
}


- (int32_t) getLastWidth {
        return self->lastWidth;
}


- (int32_t) getLastHeight {
        return self->lastHeight;
}


- (int32_t) getLastHalfWidth {
        return self->lastHalfWidth;
}


- (int32_t) getLastHalfHeight {
        return self->lastHalfHeight;
}

@end

