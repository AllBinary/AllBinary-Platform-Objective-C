// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/LicenseLoadingTypeFactory.h"
#include "org/allbinary/game/midlet/LicenseLoadingType.h"


static LicenseLoadingTypeFactory* LicenseLoadingTypeFactory_instance;

void LicenseLoadingTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseLoadingTypeFactory_instance = [((LicenseLoadingTypeFactory*) [LicenseLoadingTypeFactory alloc]) init];
}

@implementation LicenseLoadingTypeFactory

- (void) initFields {
    self->INITIAL_LOADING = [((LicenseLoadingType*) [LicenseLoadingType alloc]) init:"Initial Loading"];
    self->GAME_START = [((LicenseLoadingType*) [LicenseLoadingType alloc]) init:"Game Start"];
    self->LOGIN = [((LicenseLoadingType*) [LicenseLoadingType alloc]) init:"Login"];
    self->OTHER = [((LicenseLoadingType*) [LicenseLoadingType alloc]) init:"Other/Usually The First Non Demo Level"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LicenseLoadingTypeFactory*) getIntance {
        return (LicenseLoadingTypeFactory_staticInit(), LicenseLoadingTypeFactory_instance);
}

@end

