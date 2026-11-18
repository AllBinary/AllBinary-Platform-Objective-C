// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/SpinnerAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void SpinnerAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpinnerAI

- (void) initFields {
    self->isEven = false;
    
}


- (instancetype) init:(int32_t*)direction :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->direction = direction;
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if (self->isEven) {
            [super processKeyAI:self->direction[0]];
            self->isEven = false;
        } else {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
            self->isEven = true;
        }
}

@end

