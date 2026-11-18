// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfigurationSingleton.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"


static GameConfigurationSingleton* GameConfigurationSingleton_SINGLETON;

void GameConfigurationSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfigurationSingleton_SINGLETON = [((GameConfigurationSingleton*) [GameConfigurationSingleton alloc]) init];
}

@implementation GameConfigurationSingleton

- (void) initFields {
    
    
}


+ (GameConfigurationSingleton*) getInstance {
        return (GameConfigurationSingleton_staticInit(), GameConfigurationSingleton_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        self->hashtable = [[StdUtil getInstance] createHashtable];
    return self;
}


- (GameConfiguration*) getInstanceByName:(const char*)name {
        return ((GameConfiguration*) [self->hashtable get:JAVA_BOX(name)]);
}


- (BasicArrayList*) getOptionsBasicArrayList {
        return self->list;
}


- (void) add:(GameConfiguration*)gameConfiguration {
        [self->list add:gameConfiguration];
}


- (ABHashtable*) getHashtable {
        return self->hashtable;
}

@end

