// Generated Code Do Not Modify
#include "org/allbinary/android/input/motion/AllAnalogControllerVisitor.h"
#include "org/allbinary/game/input/analog/AnalogLocationInput.h"
#include "org/allbinary/game/input/analog/AnalogLocationInputFactory.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/android/input/motion/AnalogControllerVisitor.h"
#include "org/allbinary/android/input/motion/AnalogLocationInputProcessor.h"



void AllAnalogControllerVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllAnalogControllerVisitor

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(AnalogLocationInputProcessor*)analogLocationInputProcessor {
        BasicArrayList* analogLocationInputList = [[AnalogLocationInputFactory getInstance] getList];
        AnalogLocationInput* analogLocationInput = nullptr;
        for (int32_t index = [analogLocationInputList size] - 1; index >= 0; index--) {
            analogLocationInput = ((AnalogLocationInput*) [analogLocationInputList get:index]);
            [analogLocationInputProcessor process:allbinaryLayerManager :analogLocationInput];
        }
}

@end

