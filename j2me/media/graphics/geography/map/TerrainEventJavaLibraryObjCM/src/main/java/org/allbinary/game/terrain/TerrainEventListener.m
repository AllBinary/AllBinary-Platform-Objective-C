// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/TerrainEventListener.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/terrain/TerrainEventListenerInterface.h"
#include "org/allbinary/game/terrain/TerrainEvent.h"



void TerrainEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TerrainEventListener

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onTerrainEvent:(TerrainEvent*)terrainEvent {
        [self->list clear];
        [self->list add:terrainEvent];
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

