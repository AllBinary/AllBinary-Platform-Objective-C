// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/MultiKeyPressesAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/KeyPressesAI.h"



void MultiKeyPressesAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultiKeyPressesAI

- (void) initFields {
    self->toggleTimeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:600];
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:hashtable :ownerLayerInterface :gameInput];
        [self initFields];
        [self update];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
}


// throws Exception
- (void) update {
        GameInput* gameInput = [self getGameInput];
        int32_t* keys = self->keys;
        int32_t size = java_array_length(keys);
        if ([self isOn]) {
            for (int32_t index = 0; index < size; index++) {
                int32_t key = ((int32_t) (keys[index]));
                if (key != -1) {
                    [gameInput add:[self->gameKeyEventFactory getInstanceForKey:self :key]];
                }
            }
        } else {
            for (int32_t index = 0; index < size; index++) {
                int32_t key = ((int32_t) (keys[index]));
                if (key != -1) {
                    [gameInput addForRemoval:[self->gameKeyEventFactory getInstanceForKey:self :key]];
                }
            }
        }
}


// throws Exception
- (void) toggle {
        if ([self->toggleTimeHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            [super toggle];
            [self update];
        }
}


// throws Exception
- (void) disable {
        if ([self->toggleTimeHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            [super disable];
            [self update];
        }
}


// throws Exception
- (void) enable {
        if ([self->toggleTimeHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            [super enable];
            [self update];
        }
}

@end

