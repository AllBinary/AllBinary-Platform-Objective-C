// Generated Code Do Not Modify
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/logic/system/SoftwareInformation.h"
#include "org/allbinary/business/advertisement/GameAdStateFactoryInterface.h"
#include "org/allbinary/business/advertisement/AppNameLicensingAdConfiguration.h"
#include "org/allbinary/business/advertisement/GameAdStateBase.h"


static GameAdStateFactory* GameAdStateFactory_instance;

void GameAdStateFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameAdStateFactory_instance = ((GameAdStateFactory*) [((GameAdStateFactory*) [GameAdStateFactory alloc]) init]);
}

@implementation GameAdStateFactory

- (void) initFields {
    self->gameAdStateArray = ((GameAdState**) java_array_from(sizeof(GameAdState*), sizeof((GameAdState*[]){ ((GameAdState*) [((GameAdState*) [GameAdState alloc]) init:((AppNameLicensingAdConfiguration*) [((AppNameLicensingAdConfiguration*) [AppNameLicensingAdConfiguration alloc]) init])]) }) / sizeof(GameAdState*), (GameAdState*[]){ ((GameAdState*) [((GameAdState*) [GameAdState alloc]) init:((AppNameLicensingAdConfiguration*) [((AppNameLicensingAdConfiguration*) [AppNameLicensingAdConfiguration alloc]) init])]) }));
    self->gameAdState = self->gameAdStateArray[0];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameAdStateFactory*) getInstance {
        return (GameAdStateFactory_staticInit(), GameAdStateFactory_instance);
}


- (GameAdState*) getCurrentInstance {
        return self->gameAdState;
}


// throws Exception
- (GameAdStateBase*) getInstanceForApp:(SoftwareInformation*)softwareInformation {
        self->gameAdState = self->gameAdStateArray[0];
        return self->gameAdStateArray[0];
}


- (bool) isEnabled {
        return false;
}

@end

