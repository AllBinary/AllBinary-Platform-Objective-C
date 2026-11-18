// Generated Code Do Not Modify
#include "org/allbinary/game/PlayerTypesFactory.h"
#include "org/allbinary/game/PlayerType.h"


static PlayerTypesFactory* PlayerTypesFactory_SINGLETON;

void PlayerTypesFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlayerTypesFactory_SINGLETON = [((PlayerTypesFactory*) [PlayerTypesFactory alloc]) init];
}

@implementation PlayerTypesFactory

- (void) initFields {
    self->PLAYER_TYPE_ONE = [((PlayerType*) [PlayerType alloc]) init:"Player Type One" :0];
    self->PLAYER_TYPE_TWO = [((PlayerType*) [PlayerType alloc]) init:"Player Type Two" :1];
    self->PLAYER_TYPE_THREE = [((PlayerType*) [PlayerType alloc]) init:"Player Type Three" :2];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PlayerTypesFactory*) getInstance {
        return (PlayerTypesFactory_staticInit(), PlayerTypesFactory_SINGLETON);
}

@end

