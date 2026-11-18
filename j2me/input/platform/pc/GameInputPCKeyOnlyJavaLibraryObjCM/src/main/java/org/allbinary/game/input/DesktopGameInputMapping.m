// Generated Code Do Not Modify
#include "org/allbinary/game/input/DesktopGameInputMapping.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "org/allbinary/game/input/PCGameInputMapping.h"
#include "org/allbinary/game/input/DesktopDefaultGameInputMapping.h"



void DesktopGameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DesktopGameInputMapping

- (instancetype) init {
    self = [super init];
    return self;
}


- (InputToGameKeyMapping*) getDefault {
        return [[((DesktopDefaultGameInputMapping*) [DesktopDefaultGameInputMapping alloc]) init] getInputMapping];
}

@end

