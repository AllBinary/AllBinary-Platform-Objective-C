// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/PersistanceStrings.h"


static PersistanceStrings* PersistanceStrings_instance;

void PersistanceStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PersistanceStrings_instance = [((PersistanceStrings*) [PersistanceStrings alloc]) init];
}

@implementation PersistanceStrings

- (void) initFields {
    self->SAVING = "Saving: ";
    self->NUMBER_OF_RECORDS = "Number of records: ";
    self->LOADING_ID = "Loading data with id: ";
    self->LOAD_ALL = "loadAll";
    self->DELETING_WITH_ID = "Deleting data with id: ";
    self->CLOSING_RECORDSTORE = "Closing RecordStore";
    self->NOT_SAVING = "Not Saving: ";
    self->ERROR_LOADING = "Error Loading gameActionInput: ";
    self->ERROR_LOADING_ID = "Error Loading id: ";
    self->ID = " id: ";
    self->GAME_ACTION_INPUT = " GameActionInput: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PersistanceStrings*) getInstance {
        return (PersistanceStrings_staticInit(), PersistanceStrings_instance);
}

@end

