// Generated Code Do Not Modify
#include "org/allbinary/game/terrain/TerrainEventHandler.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventListenerInterface.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/terrain/TerrainEventListener.h"
#include "org/allbinary/game/terrain/TerrainEvent.h"
#include "org/allbinary/game/terrain/TerrainEventListenerInterface.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif


static ABHashtable* TerrainEventHandler_hashtable;

void TerrainEventHandler_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TerrainEventHandler_hashtable = [StdUtil getInstance]->NULL_TABLE;
}

@implementation TerrainEventHandler

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (void) initMethod {
        TerrainEventHandler_hashtable = [[StdUtil getInstance] createHashtable];
}


+ (TerrainEventHandler*) getInstance:(id)anyType {
        id eventHandlerCanBeNull = [(TerrainEventHandler_staticInit(), TerrainEventHandler_hashtable) get:JAVA_BOX(anyType)];
        if (eventHandlerCanBeNull == nil) {
            eventHandlerCanBeNull = ((TerrainEventHandler*) [((TerrainEventHandler*) [TerrainEventHandler alloc]) init]);
            [(TerrainEventHandler_staticInit(), TerrainEventHandler_hashtable) put:JAVA_BOX(anyType) :JAVA_BOX(eventHandlerCanBeNull)];
        }
        return ((TerrainEventHandler*) eventHandlerCanBeNull);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(TerrainEventListener*)terrainEventListener {
        if (![self->list contains:terrainEventListener]) {
            [self->list add:terrainEventListener];
        }
}


- (void) removeAllListeners {
        [self->list clear];
        [super removeAllListeners];
}


- (void) removeListener:(EventListenerInterface*)eventListenerInterface {
        [self->list remove:eventListenerInterface];
        [super removeListener:eventListenerInterface];
}


// throws Exception
- (void) fireEvent:(AllBinaryEventObject*)eventObject {
        for (int32_t index = [self->list size]; --index >= 0; ) {
            JAVA_TRY {
                TerrainEventListener* terrainEventListener = ((TerrainEventListener*) [self->list get:index]);
                [terrainEventListener onTerrainEvent:((TerrainEvent*) eventObject)];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :[EventStrings getInstance]->FIRE_EVENT :e];
            } JAVA_END_TRY;
        }
        [super fireEvent:eventObject];
}


// throws Exception
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface {
        TerrainEventListenerInterface* terrainEventListenerInterface = ((TerrainEventListenerInterface*) eventListenerInterface);
        [((id<TerrainEventListenerInterface>) terrainEventListenerInterface) onTerrainEvent:((TerrainEvent*) eventObject)];
}

@end

