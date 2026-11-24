// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/RandomPatrolAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"
#if __has_include("org/allbinary/game/rand/MyRandomFactory.h")
#include "org/allbinary/game/rand/MyRandomFactory.h"
#endif



void RandomPatrolAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RandomPatrolAI

- (void) initFields {
    self->changedDirection = true;
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:hashtable :ownerLayerInterface :gameInput];
        [self initFields];
        [self updateRandomDistance];
    return self;
}


- (void) updateRandomDistance {
        self->currentDistance = [[MyRandomFactory getInstance] getAbsoluteNextInt:((int32_t) (self->maxDistance))];
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        [super update];
        [super processKeyAI:self->keyDirection];
        if (self->changedDirection) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
            [self updateRandomDistance];
            self->changedDirection = false;
        }
}


- (void) nextDirection {
        [super nextDirection];
        self->changedDirection = true;
}

@end

