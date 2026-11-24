// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/LockablePaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/logic/system/security/licensing/LockedResources.h"
#include "org/allbinary/logic/system/security/licensing/LockedUtil.h"
#include "org/allbinary/graphics/form/ItemPaintable.h"
#if __has_include("org/allbinary/graphics/form/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/form/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h")
#include "javax/microedition/lcdui/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/system/security/licensing/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/logic/system/security/licensing/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h")
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/LockedResources.h")
#include "org/allbinary/logic/system/security/licensing/LockedResources.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/LockedUtil.h")
#include "org/allbinary/logic/system/security/licensing/LockedUtil.h"
#endif
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif



void LockablePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LockablePaintable

- (void) initFields {
    self->animation = [((id<AnimationInterfaceFactoryInterface>) [[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:[LockedResources getInstance]->LOCKED_DEMO_GAME_FEATURE_RESOURCE]) getInstance:0];
    
}


- (instancetype) init:(int32_t)lockedIndex {
    self = [super init];
    [self initFields];
        self->lockedIndex = lockedIndex;
    return self;
}


- (void) paint:(Graphics*)graphics :(int32_t)currentIndex :(int32_t)x :(int32_t)y {
        if ([[LockedUtil getInstance] isLocked] && currentIndex >= [self getLockedIndex]) {
            [[self getAnimation] paintXY:graphics :x :y];
        }
}


- (int32_t) getLockedIndex {
        return self->lockedIndex;
}


- (Animation*) getAnimation {
        return self->animation;
}

@end

