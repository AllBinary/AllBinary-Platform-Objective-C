// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/FormPlayerGameInputProcessor.h"
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#if __has_include("org/allbinary/graphics/form/PlayerGameInput.h")
#include "org/allbinary/graphics/form/PlayerGameInput.h"
#endif
#if __has_include("org/allbinary/canvas/PlayerGameInput.h")
#include "org/allbinary/canvas/PlayerGameInput.h"
#endif
#if __has_include("org/allbinary/game/input/PlayerGameInput.h")
#include "org/allbinary/game/input/PlayerGameInput.h"
#endif



void FormPlayerGameInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FormPlayerGameInputProcessor

- (void) initFields {
    
}


- (instancetype) init:(PlayerGameInputCompositeInterface*)playerGameInputCompositeInterface {
    self = [super init];
    [self initFields];
        self->playerGameInputCompositeInterface = playerGameInputCompositeInterface;
    return self;
}


// throws Exception
- (void) process {
        [[((id<PlayerGameInputCompositeInterface>) self->playerGameInputCompositeInterface) getPlayerGameInput] update];
}

@end

