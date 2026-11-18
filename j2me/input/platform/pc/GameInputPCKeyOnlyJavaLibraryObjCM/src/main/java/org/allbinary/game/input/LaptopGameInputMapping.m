// Generated Code Do Not Modify
#include "org/allbinary/game/input/LaptopGameInputMapping.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/input/PCGameInputMapping.h"
#include "org/allbinary/game/input/LaptopDefaultGameInputMapping.h"



void LaptopGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LaptopGameInputMapping

- (instancetype) init {
    self = [super init];
    return self;
}


- (InputToGameKeyMapping*) getDefault {
        return [[((LaptopDefaultGameInputMapping*) [LaptopDefaultGameInputMapping alloc]) init] getInputMapping];
}

@end

