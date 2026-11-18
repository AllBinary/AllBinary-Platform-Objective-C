// Generated Code Do Not Modify
#include "org/allbinary/game/input/TestInputExample.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/TestInputInterface.h"



void TestInputExample_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TestInputExample

- (void) initFields {
    self->testValue = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) up {
}


- (void) down {
}


- (void) left {
        self->testValue++;
}


- (void) right {
        self->testValue--;
}


- (void) strafeLeft {
}


- (void) strafeRight {
}


- (void) paint:(Graphics*)graphics {
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

