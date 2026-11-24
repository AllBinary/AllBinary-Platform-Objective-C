// Generated Code Do Not Modify
#include "org/allbinary/game/input/NormalJ2MEGameInputMapping.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/input/J2MEGameInputMapping.h"
#include "org/allbinary/game/input/NormalJ2MEDefaultGameInputMapping.h"



void NormalJ2MEGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NormalJ2MEGameInputMapping

- (instancetype) init {
    self = [super init];
    return self;
}


- (InputToGameKeyMapping*) getDefault {
        return [((NormalJ2MEDefaultGameInputMapping*) [((NormalJ2MEDefaultGameInputMapping*) [NormalJ2MEDefaultGameInputMapping alloc]) init]) getInputMapping];
}

@end

