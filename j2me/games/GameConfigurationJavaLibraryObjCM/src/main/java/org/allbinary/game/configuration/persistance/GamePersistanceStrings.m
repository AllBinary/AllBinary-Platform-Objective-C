// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"


static GamePersistanceStrings* GamePersistanceStrings_instance;

void GamePersistanceStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GamePersistanceStrings_instance = [((GamePersistanceStrings*) [GamePersistanceStrings alloc]) init];
}

@implementation GamePersistanceStrings

- (void) initFields {
    self->SAVED_GAME_RECORD_ID = "_SG";
    self->SAVED_GAME_CONFIGURATION_RECORD_ID = "_SGC";
    self->DEFAULT_INPUT_MAPPING_RECORD_ID = "_DIM";
    self->SAVED_INPUT_CONFIGURATION_RECORD_ID = "_SIC";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GamePersistanceStrings*) getInstance {
        return (GamePersistanceStrings_staticInit(), GamePersistanceStrings_instance);
}

@end

