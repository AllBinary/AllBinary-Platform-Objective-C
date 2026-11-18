// Generated Code Do Not Modify
#include "org/allbinary/game/input/InputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInputStrings.h"



void InputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputProcessor

- (void) initFields {
    self->gameInputStrings = [GameInputStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
}


- (void) keyReleasedByDevice:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId {
}

@end

