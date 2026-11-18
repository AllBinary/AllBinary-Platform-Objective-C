// Generated Code Do Not Modify
#include "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/multiplayer/layer/MultiPlayerGameLayerInterface.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/game/multiplayer/layer/MultiplayerBehavior.h"



void MultiPlayerGameLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultiPlayerGameLayer


- (instancetype) init:(RemoteInfo*)remoteInfo :(Group**)groupInterface :(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition {
        self = [super init:groupInterface :name :layerInfo :viewPosition];
    return self;
}


- (MultiplayerBehavior*) getMultiplayerBehavior {
        return (MultiplayerBehavior_staticInit(), MultiplayerBehavior_NULL_MULTIPLAYER_BEHAVIOR);
}


- (void) setPingInfo:(bool)show {
}


- (void) setFiring:(int16_t)firing {
}


- (int16_t) getFiring {
        return 0;
}

@end

