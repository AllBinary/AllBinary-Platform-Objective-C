// Generated Code Do Not Modify
#include "org/allbinary/game/part/weapon/BasicWeaponPart.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/game/score/NoScoreable.h"
#include "org/allbinary/game/score/ScoreableInterface.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/part/weapon/SalvoInterface.h"
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif


BasicWeaponPart* BasicWeaponPart_NULL_BASIC_WEAPON_PART;

void BasicWeaponPart_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicWeaponPart_NULL_BASIC_WEAPON_PART = [BasicWeaponPart createBasicWeaponPart:[[NullAnimationFactory getFactoryInstance] getInstance:0]];
}

@implementation BasicWeaponPart

- (void) initFields {
    self->animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
    self->ownerLayerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
    self->weaponProperties = (WeaponProperties_staticInit(), WeaponProperties_NULL_WEAPON_PROPERTIES);
    self->scoreableInterface = [NoScoreable getInstance];
    self->relativeRelationship = (RelativeRelationship_staticInit(), RelativeRelationship_NULL_RELATIVE_RELATIONSHIP);
}


+ (BasicWeaponPart*) createBasicWeaponPart:(Animation*)animationInterface {
        return ((BasicWeaponPart*) [((BasicWeaponPart*) [BasicWeaponPart alloc]) init:animationInterface :(AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER) :(WeaponProperties_staticInit(), WeaponProperties_NULL_WEAPON_PROPERTIES) :[NoScoreable getInstance] :(RelativeRelationship_staticInit(), RelativeRelationship_NULL_RELATIVE_RELATIONSHIP)]);
}


- (instancetype) init:(Animation*)animationInterface :(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship {
    self = [super init];
    [self initFields];
        [self initMethod:sourceLayerInterface :weaponProperties :scoreableInterface :relativeRelationship];
        [self setAnimationInterface:animationInterface];
    return self;
}


- (void) initMethod:(AllBinaryLayer*)sourceLayerInterface :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface :(RelativeRelationship*)relativeRelationship {
        [self setOwnerLayerInterface:sourceLayerInterface];
        [self setWeaponProperties:weaponProperties];
        self->scoreableInterface = scoreableInterface;
        self->relativeRelationship = relativeRelationship;
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle {
        [self processScore:allbinaryLayerManager :angle :otherAngle :[self getWeaponProperties] :self->scoreableInterface];
}


// throws Exception
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface {
        java_throw(java_exception_new("Exception", [CommonStrings getInstance]->NOT_IMPLEMENTED));
}


- (AllBinaryLayer*) getOwnerLayerInterface {
        return self->ownerLayerInterface;
}


- (void) setOwnerLayerInterface:(AllBinaryLayer*)ownerLayerInterface {
        self->ownerLayerInterface = ownerLayerInterface;
}


- (Animation*) getAnimationInterface {
        return self->animationInterface;
}


- (void) setAnimationInterface:(Animation*)animationInterface {
        self->animationInterface = animationInterface;
}


- (void) paint:(Graphics*)graphics {
        ViewPositionBase* viewPosition = [[self getOwnerLayerInterface] getViewPosition];
        int32_t viewX = [viewPosition getX];
        int32_t viewY = [viewPosition getY];
        [self->animationInterface paintXY:graphics :viewX :viewY];
}


- (void) paintThreed:(Graphics*)graphics {
}


- (WeaponProperties*) getWeaponProperties {
        return self->weaponProperties;
}


- (void) setWeaponProperties:(WeaponProperties*)weaponProperties {
        self->weaponProperties = weaponProperties;
}

@end

