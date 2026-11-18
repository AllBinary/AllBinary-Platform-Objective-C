// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/DamageWeaponLayer.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/physics/movement/Movement.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/game/layer/weapon/CollidableDamageWeaponBehavior.h"



void DamageWeaponLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DamageWeaponLayer


- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(Movement*)movement :(Animation*)animationInterface :(Animation*)destroyedAnimationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition :(const char*)username :(int32_t)actorSessionId :(int32_t)id_ :(int32_t)multiPlayerType {
        self = [super init:name :remoteInfo :multiPlayerType :movement :animationInterface :destroyedAnimationInterface :rectangle :viewPosition];
        [self setCollidableInferface:[((CollidableDamageWeaponBehavior*) [CollidableDamageWeaponBehavior alloc]) init:true]];
    return self;
}

@end

