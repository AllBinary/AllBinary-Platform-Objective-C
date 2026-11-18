// Generated Code Do Not Modify
#include "org/allbinary/game/layer/special/SpecialGameInputFactory.h"
#include "org/allbinary/game/layer/special/SpecialGameInput.h"


SpecialGameInput* SpecialGameInputFactory_NO_SPECIAL_GAME_INPUT;

void SpecialGameInputFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SpecialGameInputFactory_NO_SPECIAL_GAME_INPUT = [((SpecialGameInput*) [SpecialGameInput alloc]) init];
}

@implementation SpecialGameInputFactory

- (instancetype) init {
    self = [super init];
    return self;
}

@end

