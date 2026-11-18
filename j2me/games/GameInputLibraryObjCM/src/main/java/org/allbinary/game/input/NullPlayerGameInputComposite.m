// Generated Code Do Not Modify
#include "org/allbinary/game/input/NullPlayerGameInputComposite.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#include "org/allbinary/game/input/NoPlayerGameInput.h"
#include "org/allbinary/game/input/PlayerGameInput.h"


NullPlayerGameInputComposite* NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITE;

void NullPlayerGameInputComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITE = [((NullPlayerGameInputComposite*) [NullPlayerGameInputComposite alloc]) init];
}

@implementation NullPlayerGameInputComposite

- (instancetype) init {
    self = [super init];
    return self;
}


- (const char*) getName {
        return [StringUtil getInstance]->EMPTY_STRING;
}


// throws Exception
- (void) processInput:(AllBinaryLayerManager*)layerManager {
}


- (void) initInputProcessors {
}


- (PlayerGameInput*) getPlayerGameInput {
        return [NoPlayerGameInput getInstance];
}

@end

