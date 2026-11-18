// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/TerrainEventFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/terrain/TerrainEvent.h"



void TerrainEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TerrainEventFactory


- (instancetype) init {
    self = [super init];
    return self;
}


- (AllBinaryEventObject*) getInstance {
        return [((TerrainEvent*) [TerrainEvent alloc]) init:[NullUtil getInstance]->NULL_OBJECT];
}

@end

