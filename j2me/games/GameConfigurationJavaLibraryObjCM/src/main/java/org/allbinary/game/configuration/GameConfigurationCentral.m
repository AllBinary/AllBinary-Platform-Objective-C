// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.h"
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id GameConfigurationCentral_SINGLETON;

void GameConfigurationCentral_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfigurationCentral_SINGLETON = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameConfigurationCentral

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    self->gameControlFidelity = 36;
}


+ (GameConfigurationCentral*) getInstance {
        if ((GameConfigurationCentral_staticInit(), GameConfigurationCentral_SINGLETON) == [NullUtil getInstance]->NULL_OBJECT) {
            GameConfigurationCentral_SINGLETON = ((GameConfigurationCentral*) [((GameConfigurationCentral*) [GameConfigurationCentral alloc]) init]);
        }
        return ((GameConfigurationCentral*) (GameConfigurationCentral_staticInit(), GameConfigurationCentral_SINGLETON));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        self->SCALE = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Scale" :[smallIntegerSingletonFactory getAt:2] :[smallIntegerSingletonFactory getAt:2] :[smallIntegerSingletonFactory getAt:3]]);
        self->ORIENTATION = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Orientation" :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:8]]);
        self->SENSOR_UPDATE_RATE = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Sensor Update Rate" :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:3]]);
        self->VIBRATION = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Vibration" :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:3]]);
        self->CHALLENGE_LEVEL = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Global Challenge Level" :[smallIntegerSingletonFactory getAt:3] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->COLLIDE_DAMAGE = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Collide Damage Challenge Level" :[smallIntegerSingletonFactory getAt:3] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->DURABILITY_CHALLENGE_LEVEL = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Enemy Durability Challenge Level" :[smallIntegerSingletonFactory getAt:3] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->SPEED_CHALLENGE_LEVEL = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Enemy Speed Challenge Level" :[smallIntegerSingletonFactory getAt:3] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->ATTACK_CHALLENGE_LEVEL = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Enemy Attack Challenge Level" :[smallIntegerSingletonFactory getAt:3] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->CONTROL_LEVEL = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Control Fidelity" :[smallIntegerSingletonFactory getAt:5] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->PLAYER_INPUT_WAIT = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Input Wait" :[smallIntegerSingletonFactory getAt:5] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->SPEED = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Game Speed (Device Specific)" :[smallIntegerSingletonFactory getAt:5] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:10]]);
        self->SOUND_VOLUME = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Sound Volume" :[smallIntegerSingletonFactory getAt:6] :[smallIntegerSingletonFactory getAt:0] :[smallIntegerSingletonFactory getAt:10]]);
        self->MAX_GAME_OBJECTS = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Max Game Objects" :[smallIntegerSingletonFactory getAt:20] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:50]]);
        self->MAX_LAYERS = ((GameConfiguration*) [((GameConfiguration*) [GameConfiguration alloc]) init:"Max Layers" :[smallIntegerSingletonFactory getAt:20] :[smallIntegerSingletonFactory getAt:1] :[smallIntegerSingletonFactory getAt:50]]);
    return self;
}


- (void) loadMethod:(AbeClientInformationInterface*)abeClientInformation {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        JAVA_TRY {
            SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
            KeyValuePersistance* keyValuePersistance = [GameConfigurationPersistanceSingleton getInstance];
            [keyValuePersistance clear];
            [keyValuePersistance loadAll:abeClientInformation];
            BasicArrayList* list = [keyValuePersistance getIds];
            if ([list size] > 0) {
                ABHashtable* hashtable = [keyValuePersistance get:0];
                id anyType = ((id) [self->SCALE getName]);
                const char* value = ((const char*) [hashtable get:JAVA_BOX(anyType)]);
                [self->SCALE setValue:[smallIntegerSingletonFactory getAt:((int32_t) (((int32_t) strtoll(value, nullptr, 10))))]];
            } else {
                [self->logUtil putF:"No Game Configuration To Load" :self :commonStrings->LOAD];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->LOAD :e];
        } JAVA_END_TRY;
}


- (void) setGameControlFidelity:(int32_t)gameControlFidelity {
        self->gameControlFidelity = gameControlFidelity;
}


- (int32_t) getGameControlFidelity {
        return self->gameControlFidelity;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonStrings = [CommonSeps getInstance];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->SCALE getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->SCALE getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->ORIENTATION getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->ORIENTATION getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->SENSOR_UPDATE_RATE getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->SENSOR_UPDATE_RATE getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->VIBRATION getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->VIBRATION getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->CHALLENGE_LEVEL getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->CHALLENGE_LEVEL getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->COLLIDE_DAMAGE getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->COLLIDE_DAMAGE getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->DURABILITY_CHALLENGE_LEVEL getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->DURABILITY_CHALLENGE_LEVEL getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->SPEED_CHALLENGE_LEVEL getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->SPEED_CHALLENGE_LEVEL getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->ATTACK_CHALLENGE_LEVEL getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->ATTACK_CHALLENGE_LEVEL getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->CONTROL_LEVEL getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->CONTROL_LEVEL getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->SPEED getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->SPEED getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->MAX_GAME_OBJECTS getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->MAX_GAME_OBJECTS getValue])))];
        [stringBuffer append:commonStrings->COMMA_SEP];
        [stringBuffer append:[self->MAX_LAYERS getName]];
        [stringBuffer append:commonStrings->EQUALS];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self->MAX_LAYERS getValue])))];
        return [stringBuffer toString];
}

@end

