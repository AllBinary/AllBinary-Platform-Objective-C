// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#include "org/allbinary/game/combat/destroy/DestroyedLayerProcessor.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/game/score/NoScoreable.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/physics/movement/Movement.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/layer/weapon/CollidableWeaponBehavior.h"
#if __has_include("org/allbinary/game/layer/weapon/BasicLayerProcessor.h")
#include "org/allbinary/game/layer/weapon/BasicLayerProcessor.h"
#endif
#if __has_include("javax/microedition/khronos/opengles/BasicLayerProcessor.h")
#include "javax/microedition/khronos/opengles/BasicLayerProcessor.h"
#endif
#if __has_include("javax/microedition/lcdui/BasicLayerProcessor.h")
#include "javax/microedition/lcdui/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/animation/BasicLayerProcessor.h")
#include "org/allbinary/animation/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/animation/BasicLayerProcessor.h")
#include "org/allbinary/animation/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/animation/BasicLayerProcessor.h")
#include "org/allbinary/animation/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/collision/BasicLayerProcessor.h")
#include "org/allbinary/game/collision/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/BasicLayerProcessor.h")
#include "org/allbinary/game/combat/destroy/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/combat/weapon/BasicLayerProcessor.h")
#include "org/allbinary/game/combat/weapon/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/configuration/BasicLayerProcessor.h")
#include "org/allbinary/game/configuration/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/identification/BasicLayerProcessor.h")
#include "org/allbinary/game/identification/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h")
#include "org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h")
#include "org/allbinary/game/multiplayer/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/score/BasicLayerProcessor.h")
#include "org/allbinary/game/score/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/score/BasicLayerProcessor.h")
#include "org/allbinary/game/score/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/game/tick/BasicLayerProcessor.h")
#include "org/allbinary/game/tick/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/graphics/BasicLayerProcessor.h")
#include "org/allbinary/graphics/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/layer/BasicLayerProcessor.h")
#include "org/allbinary/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/layer/BasicLayerProcessor.h")
#include "org/allbinary/layer/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/physics/movement/BasicLayerProcessor.h")
#include "org/allbinary/physics/movement/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/view/BasicLayerProcessor.h")
#include "org/allbinary/view/BasicLayerProcessor.h"
#endif
#if __has_include("org/allbinary/view/BasicLayerProcessor.h")
#include "org/allbinary/view/BasicLayerProcessor.h"
#endif



void WeaponLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation WeaponLayer

- (void) initFields {
    self->animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
    
    
    self->sourceLayerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
    self->totalDamage = 0;
    self->initDamage = 0;
    self->destroyed = true;
    self->scoreableInterface = [NoScoreable getInstance];
    
    self->weaponProperties = (WeaponProperties_staticInit(), WeaponProperties_NULL_WEAPON_PROPERTIES);
    
    self->collidableWeaponBehavior = [CollidableWeaponBehavior getNullInstance];
}


- (instancetype) init:(const char*)name :(RemoteInfo*)remoteInfo :(int32_t)multiPlayerType :(Movement*)movement :(Animation*)animationInterface :(Animation*)destroyedAnimationInterface :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition {
        self = [super init:remoteInfo :[BasicGroupFactory getInstance]->NONE_ARRAY :name :rectangle :viewPosition];
        [self initFields];
        self->initAnimationInterface = animationInterface;
        [self setAnimationInterface:animationInterface];
        self->destroyedAnimationInterface = destroyedAnimationInterface;
        self->movement = movement;
        self->multiPlayerType = multiPlayerType;
    return self;
}


- (void) setCollidableInferface:(CollidableBaseBehavior*)collidableInferface {
        [super setCollidableInferface:collidableInferface];
        self->collidableWeaponBehavior = ((CollidableWeaponBehavior*) [self getCollidableInferface]);
}


// throws Exception
- (void) initXYZ:(int32_t)x :(int32_t)y :(int32_t)z {
        self->x = x;
        self->y = y;
        self->z = z;
}


// throws Exception
- (void) init_:(AllBinaryLayer*)sourceLayerInterface :(int32_t)angle :(int32_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreable {
        [self setWeaponPropertiesP:weaponProperties];
        [self setReadyForExplosion:false];
        [self setAnimationInterface:[self getInitAnimationInterfaceP]];
        [self setOwnerLayerInterface:sourceLayerInterface];
        [self->collidableWeaponBehavior init_:sourceLayerInterface];
        [self setGroupInterfaces];
        if (scoreable != nil) {
            self->scoreableInterface = scoreable;
        }
        self->totalDamage = 0;
        self->initDamage = [weaponProperties getDamage];
        [self setDestroyed:false];
        [self->movement init_:[weaponProperties getSpeed] :angle :otherAngle];
}


- (void) setGroupInterfaces {
        BasicGroupFactory* basicGroupFactory = [BasicGroupFactory getInstance];
        if ([self->sourceLayerInterface getGroupInterface][0] == basicGroupFactory->ENEMY) {
            [self setGroupInterface:basicGroupFactory->ENEMY_ARRAY];
        } else {
            [self setGroupInterface:[self->sourceLayerInterface getGroupInterface]];
        }
}


// throws Exception
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([self isExhausted] && ![self isDestroyed]) {
            if ([self isReadyForExplosion]) {
                IndexedAnimation* indexedAnimationInterface = ((IndexedAnimation*) [self getAnimationInterface]);
                int32_t currentFrame = [indexedAnimationInterface getFrame];
                if (currentFrame < [indexedAnimationInterface getAnimationSize] - 1) {
                    [indexedAnimationInterface nextFrame];
                } else {
                    [self setDestroyed:true];
                }
            } else {
                CollidableWeaponBehavior* collidableWeaponBehavior = ((CollidableWeaponBehavior*) [self getCollidableInferface]);
                if ([collidableWeaponBehavior isCollided]) {
                    [self setAnimationInterface:self->destroyedAnimationInterface];
                    [[self getMovement] stop];
                    [self setReadyForExplosion:true];
                } else {
                    [self setDestroyed:true];
                }
            }
        }
        [self->movement process:self];
        self->totalDamage += ((int32_t) [self->weaponProperties getDissipation]);
}


- (bool) isDestroyed {
        return self->destroyed;
}


- (void) damage:(int32_t)damage :(int32_t)damageType {
        self->totalDamage += damage * damage;
}


- (void) givePoints:(int32_t)total {
        [self->scoreableInterface addPoints:[[GameConfigurationUtil getInstance] getCompetitionValue] * total];
}


- (bool) isExhausted {
        if (self->totalDamage > [self getInitDamage] || self->totalDamage < 0) {
            return true;
        } else {
            return false;
        }
}


- (int32_t) getDamage:(int32_t)damageType {
        if (![self isExhausted]) {
            int32_t total = [self getInitDamage] - self->totalDamage;
            [self givePoints:total];
            return total;
        }
        return 0;
}


- (void) setDestroyed:(bool)destroyed {
        self->destroyed = destroyed;
        if ([self isDestroyed]) {
            self->scoreableInterface = [NoScoreable getInstance];
            [[DestroyedLayerProcessor getInstance] add:self];
        }
}


- (int32_t) getInitDamage {
        return self->initDamage;
}


- (void) setAnimationInterface:(Animation*)animationInterface {
        self->animationInterface = animationInterface;
}


- (Animation*) getAnimationInterface {
        return self->animationInterface;
}


- (Animation*) getInitAnimationInterfaceP {
        return self->initAnimationInterface;
}


- (void) setInitAnimationInterfaceP:(Animation*)initAnimationInterface {
        self->initAnimationInterface = initAnimationInterface;
}


- (Animation*) getDestroyedAnimationInterface {
        return self->destroyedAnimationInterface;
}


- (AllBinaryLayer*) getOwnerLayerInterface {
        return self->sourceLayerInterface;
}


- (void) setOwnerLayerInterface:(AllBinaryLayer*)sourceLayerInterface {
        self->sourceLayerInterface = sourceLayerInterface;
}


- (void) paint:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self getViewPosition];
        [self->animationInterface paintXY:graphics :[viewPosition getX] - [self getHalfWidth] :[viewPosition getY] - [self getHalfHeight]];
}


- (void) paintThreed:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [self getViewPosition];
        [self->animationInterface paintThreedXYZ:graphics :[viewPosition getX] - [self getHalfWidth] :[viewPosition getY] - [self getHalfHeight] :[viewPosition getZ] - [self getHalfDepth]];
}


- (Movement*) getMovement {
        return self->movement;
}


- (void) setMovement:(Movement*)movement {
        self->movement = movement;
}


- (int32_t) getType {
        return [WeaponLayer getStaticType];
}


+ (int32_t) getStaticType {
        return 0;
}


- (int32_t) getMultiPlayerType {
        return self->multiPlayerType;
}


- (void) setWeaponPropertiesP:(WeaponProperties*)weaponProperties {
        self->weaponProperties = weaponProperties;
}


- (WeaponProperties*) getWeaponPropertiesP {
        return self->weaponProperties;
}


- (bool) implmentsTickableInterface {
        return true;
}


// throws Exception
- (void) set:(GL*)gl {
        [self->initAnimationInterface set:gl];
}

@end

