// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#endif


static GameLevelDisplayChangeEventListenersFactory* GameLevelDisplayChangeEventListenersFactory_instance;

void GameLevelDisplayChangeEventListenersFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameLevelDisplayChangeEventListenersFactory_instance = ((GameLevelDisplayChangeEventListenersFactory*) [((GameLevelDisplayChangeEventListenersFactory*) [GameLevelDisplayChangeEventListenersFactory alloc]) init]);
}

@implementation GameLevelDisplayChangeEventListenersFactory

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameLevelDisplayChangeEventListenersFactory*) getInstance {
        return (GameLevelDisplayChangeEventListenersFactory_staticInit(), GameLevelDisplayChangeEventListenersFactory_instance);
}


- (void) add:(DisplayChangeEventListener*)displayChangeEventListener {
        [self->list add:displayChangeEventListener];
        [[DisplayChangeEventHandler getInstance] addListenerInterface:displayChangeEventListener];
}


- (void) clear {
        BasicEventHandler* displayChangeEventHandler = [DisplayChangeEventHandler getInstance];
        DisplayChangeEventListener* displayChangeEventListener = nullptr;
        for (int32_t index = [self->list size]; --index >= 0; ) {
            displayChangeEventListener = ((DisplayChangeEventListener*) self->list->objectArray[index]);
            [displayChangeEventHandler removeListener:displayChangeEventListener];
        }
        [self->list clear];
}

@end

