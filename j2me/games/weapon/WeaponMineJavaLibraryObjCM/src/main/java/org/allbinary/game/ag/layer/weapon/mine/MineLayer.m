// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayer.h"
#include "org/allbinary/ag/weapon/media/audio/DropWeaponSound.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/media/audio/SecondaryPlayerQueueFactory.h"
#include "org/allbinary/physics/movement/NoMovementFactory.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/view/event/ViewPositionEventHandler.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.h"
#if __has_include("org/allbinary/physics/movement/NoMovementFactory.h")
#include "org/allbinary/physics/movement/NoMovementFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/ag/layer/weapon/mine/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/ag/weapon/media/audio/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/ag/weapon/media/audio/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/layer/weapon/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/game/multiplayer/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/layer/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/layer/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/media/audio/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/media/audio/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/physics/movement/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/physics/movement/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/view/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/view/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/view/event/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/view/event/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/layer/weapon/mine/PlayerQueue.h")
#include "org/allbinary/game/ag/layer/weapon/mine/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/ag/weapon/media/audio/PlayerQueue.h")
#include "org/allbinary/ag/weapon/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/animation/PlayerQueue.h")
#include "org/allbinary/animation/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/layer/weapon/PlayerQueue.h")
#include "org/allbinary/game/layer/weapon/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/PlayerQueue.h")
#include "org/allbinary/game/multiplayer/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/graphics/PlayerQueue.h")
#include "org/allbinary/graphics/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/layer/PlayerQueue.h")
#include "org/allbinary/layer/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/media/audio/PlayerQueue.h")
#include "org/allbinary/media/audio/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/physics/movement/PlayerQueue.h")
#include "org/allbinary/physics/movement/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/view/PlayerQueue.h")
#include "org/allbinary/view/PlayerQueue.h"
#endif
#if __has_include("org/allbinary/view/event/PlayerQueue.h")
#include "org/allbinary/view/event/PlayerQueue.h"
#endif


static const char* MineLayer_NAME = "MineLayer";

void MineLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MineLayer

- (void) initFields {
    self->viewPositionEventHandler = [ViewPositionEventHandler getInstance];
}


- (instancetype) init:(ViewPositionBase*)viewPosition {
        self = [super init:MineLayer_NAME :(RemoteInfo_staticInit(), RemoteInfo_REMOTE_INFO) :-1 :[[NoMovementFactory getInstance] getMovmentInstance] :[((id<AnimationInterfaceFactoryInterface>) [[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[MineWeaponResources getInstance]->RESOURCE]) getInstance:0] :[SimpleWeaponLayer createDestroyed] :((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :10 :10]) :viewPosition];
        [self initFields];
    return self;
}


- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z {
        [self setPosition:x + 5 :y + 5 :z];
        [self->viewPositionEventHandler addListener:((AllBinaryLayer*) self)];
        [[SecondaryPlayerQueueFactory getInstance] add:[DropWeaponSound getInstance]];
}


- (void) damage:(int32_t)damage :(int32_t)damageType {
        self->totalDamage = [self getInitDamage] + 1;
}


- (int32_t) getDamage:(int32_t)damageType {
        [super getDamage:damageType];
        return [self getInitDamage];
}


- (void) setDestroyed:(bool)destroyed {
        [super setDestroyed:destroyed];
        if ([self isDestroyed]) {
            [self->viewPositionEventHandler removeListener:self];
        }
}

@end

