// Generated Code Do Not Modify
#include "org/allbinary/game/input/MotionLaptopGameInputMapping.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/input/PCGameInputMapping.h"
#include "org/allbinary/game/input/MotionLaptopDefaultGameInputMapping.h"



void MotionLaptopGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionLaptopGameInputMapping

- (instancetype) init {
    self = [super init];
    return self;
}


- (InputToGameKeyMapping*) getDefault {
        return [[((MotionLaptopDefaultGameInputMapping*) [MotionLaptopDefaultGameInputMapping alloc]) init] getInputMapping];
}

@end

