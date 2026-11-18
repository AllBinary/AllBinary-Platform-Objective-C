// Generated Code Do Not Modify
#include "org/allbinary/game/combat/weapon/WeaponProperties.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/combat/weapon/SimpleWeaponProperties.h"


WeaponProperties* WeaponProperties_NULL_WEAPON_PROPERTIES;
static bool WeaponProperties_messageSent = false;
static const char* WeaponProperties_DAMAGE = "Damage: ";
static const char* WeaponProperties_RANGE = "Range: ";
static const char* WeaponProperties_RELOAD = "Reload: ";

void WeaponProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WeaponProperties_NULL_WEAPON_PROPERTIES = [((WeaponProperties*) [WeaponProperties alloc]) init:0LL :0LL :0LL :0 :((int16_t) 0)];
}

@implementation WeaponProperties

- (void) initFields {
    self->reloadTime = 0;
    self->targetingTime = 0;
    self->speed = (BasicDecimal_staticInit(), BasicDecimal_ZERO_BIGDECIMAL);
    self->MAX = 10240LL;
    self->ZERO = 0;
}


- (instancetype) init:(int64_t)reloadTime :(int64_t)targetingTime :(int64_t)speed :(int32_t)damage :(int16_t)dissipation {
    self = [super init];
    [self initFields];
        if (speed < self->MAX && speed != 0LL && !WeaponProperties_messageSent) {
            const char* MESSAGE = "Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ";
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:MESSAGE] appendlong:speed] toString] :self :commonStrings->CONSTRUCTOR];
            WeaponProperties_messageSent = true;
        }
        [self setReloadTime:reloadTime];
        [self setTargetingTime:targetingTime];
        [self setDamage:damage];
        [self setDissipation:dissipation];
        [self setSpeed:[((BasicDecimal*) [BasicDecimal alloc]) init:speed]];
        if (dissipation != self->ZERO) {
            int64_t unscaledDamage = [self->speed getUnscaled] * ((int64_t) damage);
            int32_t scaledDissipation = ((int32_t) dissipation) * [self->speed getScaledFactorValue];
            int64_t value = (unscaledDamage / ((int64_t) scaledDissipation));
            [self setRange:((int32_t) (value * 9LL)) / 10];
        }
    return self;
}


- (void) setReloadTime:(int64_t)reloadTime {
        self->reloadTime = reloadTime;
}


- (int64_t) getReloadTime {
        return self->reloadTime;
}


- (void) setTargetingTime:(int64_t)targetingTime {
        self->targetingTime = targetingTime;
}


- (int64_t) getTargetingTime {
        return self->targetingTime;
}


- (BasicDecimal*) getSpeed {
        return self->speed;
}


- (void) setSpeed:(BasicDecimal*)speed {
        self->speed = speed;
}


- (int32_t) getDamageI:(int32_t)range {
        return [self getDamage] - (([self getDissipation] * range) / [self->speed getScaled]);
}


- (const char**) toStringArray {
        int32_t index = 0;
        const char** stringArray = ((const char**) java_array_new(sizeof(const char*), 3));
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        stringArray[index++] = [[[stringBuffer append:WeaponProperties_DAMAGE] appendint:((int32_t) [self getDamage])] toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        stringArray[index++] = [[[stringBuffer append:WeaponProperties_RANGE] appendint:((int32_t) [self getRange])] toString];
        [stringBuffer delete:0 :[stringBuffer length]];
        stringArray[index++] = [[[stringBuffer append:WeaponProperties_RELOAD] appendlong:[self getReloadTime]] toString];
        return stringArray;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [[stringBuffer append:WeaponProperties_DAMAGE] appendint:((int32_t) [self getDamage])];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [[stringBuffer append:WeaponProperties_RANGE] appendint:((int32_t) [self getRange])];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [[stringBuffer append:WeaponProperties_RELOAD] appendlong:[self getReloadTime]];
        return [stringBuffer toString];
}

@end

