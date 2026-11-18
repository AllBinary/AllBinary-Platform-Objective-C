// Generated Code Do Not Modify
#include "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/game/ai/ArtificialIntelligenceInterfaceFactoryInterface.h"


static ArtificialIntelligenceInterfaceFactoryInterfaceFactory* ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETON;

void ArtificialIntelligenceInterfaceFactoryInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETON = [((ArtificialIntelligenceInterfaceFactoryInterfaceFactory*) [ArtificialIntelligenceInterfaceFactoryInterfaceFactory alloc]) init];
}

@implementation ArtificialIntelligenceInterfaceFactoryInterfaceFactory

- (void) initFields {
    self->list = [[BasicArrayListUtil getInstance] getImmutableInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) clear {
        self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


+ (ArtificialIntelligenceInterfaceFactoryInterfaceFactory*) getInstance {
        return (ArtificialIntelligenceInterfaceFactoryInterfaceFactory_staticInit(), ArtificialIntelligenceInterfaceFactoryInterfaceFactory_SINGLETON);
}


- (ArtificialIntelligenceInterfaceFactoryInterface*) getInstanceFromCollection:(ABHashtable*)hashtable {
        int32_t typeInteger = ((int32_t) [hashtable get:JAVA_BOX(((id) (BasicAI_staticInit(), BasicAI_ID)))]);
        int32_t type = ((int32_t) (typeInteger));
        ArtificialIntelligenceInterfaceFactoryInterface* artificialIntelligenceInterfaceFactoryInterface = ((ArtificialIntelligenceInterfaceFactoryInterface*) self->list->objectArray[type - 1]);
        return artificialIntelligenceInterfaceFactoryInterface;
}


- (void) add:(ArtificialIntelligenceInterfaceFactoryInterface*)artificialIntelligenceInterfaceFactoryInterface {
        [self->list add:artificialIntelligenceInterfaceFactoryInterface];
}

@end

