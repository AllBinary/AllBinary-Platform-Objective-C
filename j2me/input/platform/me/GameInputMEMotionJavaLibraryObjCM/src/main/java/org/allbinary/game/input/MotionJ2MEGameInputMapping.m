// Generated Code Do Not Modify
#include "org/allbinary/game/input/MotionJ2MEGameInputMapping.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/input/J2MEGameInputMapping.h"
#include "org/allbinary/game/input/MotionJ2MEDefaultGameInputMapping.h"



void MotionJ2MEGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MotionJ2MEGameInputMapping

- (instancetype) init {
    self = [super init];
    return self;
}


- (InputToGameKeyMapping*) getDefault {
        return [((MotionJ2MEDefaultGameInputMapping*) [((MotionJ2MEDefaultGameInputMapping*) [MotionJ2MEDefaultGameInputMapping alloc]) init]) getInputMapping];
}

@end

