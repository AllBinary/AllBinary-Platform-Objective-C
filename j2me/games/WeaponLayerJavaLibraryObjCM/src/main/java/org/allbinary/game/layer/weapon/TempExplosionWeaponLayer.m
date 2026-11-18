// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/TempExplosionWeaponLayer.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/physics/movement/Movement.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/weapon/SimpleWeaponLayer.h"
#if __has_include("org/allbinary/game/layer/weapon/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/layer/weapon/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/combat/weapon/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/game/multiplayer/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/GameTickTimeDelayHelper.h")
#include "org/allbinary/graphics/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/layer/GameTickTimeDelayHelper.h")
#include "org/allbinary/layer/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/physics/movement/GameTickTimeDelayHelper.h")
#include "org/allbinary/physics/movement/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/view/GameTickTimeDelayHelper.h")
#include "org/allbinary/view/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/layer/weapon/CollidableBaseBehavior.h")
#include "org/allbinary/game/layer/weapon/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/animation/CollidableBaseBehavior.h")
#include "org/allbinary/animation/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/CollidableBaseBehavior.h")
#include "org/allbinary/game/combat/weapon/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/CollidableBaseBehavior.h")
#include "org/allbinary/game/multiplayer/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/graphics/CollidableBaseBehavior.h")
#include "org/allbinary/graphics/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/layer/CollidableBaseBehavior.h")
#include "org/allbinary/layer/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/physics/movement/CollidableBaseBehavior.h")
#include "org/allbinary/physics/movement/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/time/CollidableBaseBehavior.h")
#include "org/allbinary/time/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/time/CollidableBaseBehavior.h")
#include "org/allbinary/time/CollidableBaseBehavior.h"
#endif
#if __has_include("org/allbinary/view/CollidableBaseBehavior.h")
#include "org/allbinary/view/CollidableBaseBehavior.h"
#endif



void TempExplosionWeaponLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TempExplosionWeaponLayer

- (void) initFields {
    self->weaponProperties = [((WeaponProperties*) [WeaponProperties alloc]) init:-1LL :-1LL :0 :1000 :((int16_t) 0)];
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
}


- (instancetype) init:(const char*)name :(Movement*)movement :(Animation*)animationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition :(int32_t)timeDelay {
        self = [super init:name :(RemoteInfo_staticInit(), RemoteInfo_REMOTE_INFO) :-1 :movement :animationInterface :[SimpleWeaponLayer createDestroyed] :rectangle :viewPosition];
        [self initFields];
        self->timeDelayHelper->delay = timeDelay;
    return self;
}


// throws Exception
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([self->timeDelayHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            [[self getCollidableInferface] collide:self :self];
            self->totalDamage = [self getInitDamage] + 1;
        }
        [super processTick:allBinaryLayerManager];
}

@end

