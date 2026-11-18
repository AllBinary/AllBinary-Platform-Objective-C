// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/tactical/LurchAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void LurchAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LurchAI

- (void) initFields {
    self->currentRelativeAngle = 0;
    self->currentSpeed = 0;
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if (self->currentSpeed == -1) {
            self->currentSpeed = 5;
        } else {
            self->currentSpeed = -1;
        }
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t x = [ownerLayerInterface getXP];
        if ([ownerLayerInterface getXP] - self->currentSpeed <= 0) {
            [self reverse];
            [self drop];
        }
        if ([ownerLayerInterface getX2] + self->currentSpeed > [[DisplayInfoSingleton getInstance] getLastWidth]) {
            [self reverse];
            [self accelerate];
            [self drop];
        }
        if (self->currentRelativeAngle == 0) {
            x += self->currentSpeed;
        } else if (self->currentRelativeAngle == 180) {
            x -= self->currentSpeed;
        }
        [ownerLayerInterface setPosition:x :[ownerLayerInterface getYP] :[ownerLayerInterface getZP]];
        if (self->currentRelativeAngle == 0) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM0)];
        } else if (self->currentRelativeAngle == 180) {
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_POUND)];
        }
}


- (void) reverse {
        if (self->currentRelativeAngle == 180) {
            self->currentRelativeAngle = 0;
        } else if (self->currentRelativeAngle == 0) {
            self->currentRelativeAngle = 180;
        }
}


- (void) accelerate {
        if (self->currentSpeed < 20) {
            self->currentSpeed++;
        }
}


- (void) drop {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t y = [ownerLayerInterface getYP];
        if ([ownerLayerInterface getY2] + [ownerLayerInterface getHeight] > [[DisplayInfoSingleton getInstance] getLastHeight]) {
            y = 0;
        } else {
            y += [ownerLayerInterface getHeight] + 1;
        }
        [ownerLayerInterface setPosition:[ownerLayerInterface getXP] :y :[ownerLayerInterface getZP]];
}

@end

