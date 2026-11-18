// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/event/DestroyEventFactory.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"



void DestroyEventFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DestroyEventFactory

- (void) initFields {
    
}


- (instancetype) init:(AllBinaryGameCanvas*)combatGameCanvas {
    self = [super init];
    [self initFields];
        self->combatGameCanvas = combatGameCanvas;
    return self;
}


- (AllBinaryEventObject*) getInstance {
        return [((DestroyedEvent*) [DestroyedEvent alloc]) init:self->combatGameCanvas];
}

@end

