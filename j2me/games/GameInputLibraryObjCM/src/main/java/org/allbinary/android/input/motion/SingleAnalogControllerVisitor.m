// Generated Code Do Not Modify
#include "org/allbinary/android/input/motion/SingleAnalogControllerVisitor.h"
#include "org/allbinary/game/input/analog/AnalogLocationInput.h"
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/android/input/motion/AnalogControllerVisitor.h"
#include "org/allbinary/android/input/motion/AnalogLocationInputProcessor.h"
#if __has_include("org/allbinary/game/input/analog/AnalogLocationInputFactory.h")
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#endif



void SingleAnalogControllerVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingleAnalogControllerVisitor

- (void) initFields {
    
}


- (instancetype) init:(int32_t)playerInputId {
    self = [super init];
    [self initFields];
        self->playerInputId = playerInputId;
    return self;
}


- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(AnalogLocationInputProcessor*)analogLocationInputProcessor {
        AnalogLocationInput* analogLocationInput = [[AnalogLocationInputFactory getInstance] getInstanceForPlayer:self->playerInputId];
        [analogLocationInputProcessor process:allbinaryLayerManager :analogLocationInput];
}

@end

