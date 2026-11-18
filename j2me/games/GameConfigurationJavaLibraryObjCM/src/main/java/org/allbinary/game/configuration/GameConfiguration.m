// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameConfiguration.h"
#include "org/allbinary/game/configuration/event/GameFeatureEvent.h"
#include "org/allbinary/game/configuration/event/GameFeatureEventHandler.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/configuration/GameConfigurationSingleton.h"
#if __has_include("org/allbinary/game/configuration/ABHashtable.h")
#include "org/allbinary/game/configuration/ABHashtable.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ABHashtable.h")
#include "org/allbinary/game/configuration/event/ABHashtable.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ABHashtable.h")
#include "org/allbinary/game/configuration/event/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/java/bool/ABHashtable.h")
#include "org/allbinary/logic/java/bool/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/math/ABHashtable.h")
#include "org/allbinary/logic/math/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/string/ABHashtable.h")
#include "org/allbinary/logic/string/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/string/ABHashtable.h")
#include "org/allbinary/logic/string/ABHashtable.h"
#endif


static int32_t GameConfiguration_MIN_VALUE;

void GameConfiguration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameConfiguration_MIN_VALUE = (Integer_staticInit(), Integer_MIN_VALUE);
}

@implementation GameConfiguration

- (void) initFields {
    self->name = [StringUtil getInstance]->EMPTY_STRING;
    self->defaultValue = [[SmallIntegerSingletonFactory getInstance] getAt:0];
    self->value = (GameConfiguration_staticInit(), GameConfiguration_MIN_VALUE);
    self->minValue = self->defaultValue;
    self->maxValue = self->defaultValue;
    self->modifiable = [BooleanFactory getInstance]->TRUE;
}


- (instancetype) init:(const char*)name :(int32_t)defaultValue :(int32_t)minValue :(int32_t)maxValue {
    self = [super init];
    [self initFields];
        [self setName:name];
        [self setDefaultValue:defaultValue];
        self->value = [self getDefaultValue];
        [self setMinValue:minValue];
        [self setMaxValue:maxValue];
        [[[GameConfigurationSingleton getInstance] getHashtable] put:JAVA_BOX([self getName]) :JAVA_BOX(self)];
    return self;
}


// throws Exception
- (void) setValue:(int32_t)value {
        if (self->value != value) {
            int32_t oldValue = self->value;
            self->value = value;
            [[GameFeatureEventHandler getInstance] fireEvent:[((GameFeatureEvent*) [GameFeatureEvent alloc]) init:self :[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->name] append:" value: from: "] appendint:((int32_t) ((int32_t) (oldValue)))] append:" to "] appendint:((int32_t) ((int32_t) (self->value)))] toString]]];
        }
}


- (int32_t) getValue {
        return self->value;
}


- (void) setMaxValue:(int32_t)maxValue {
        self->maxValue = maxValue;
}


- (int32_t) getMaxValue {
        return self->maxValue;
}


- (void) setMinValue:(int32_t)minValue {
        self->minValue = minValue;
}


- (int32_t) getMinValue {
        return self->minValue;
}


- (void) setName:(const char*)name {
        self->name = name;
}


- (const char*) getName {
        return self->name;
}


- (void) setDefaultValue:(int32_t)defaultValue {
        self->defaultValue = defaultValue;
}


- (int32_t) getDefaultValue {
        return self->defaultValue;
}


// throws Exception
- (void) setDefault {
        [self setValue:[self getDefaultValue]];
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"Name: "];
        [stringBuffer append:self->name];
        [stringBuffer append:" Min: "];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self getMinValue])))];
        [stringBuffer append:" Max: "];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self getMaxValue])))];
        [stringBuffer append:" Value: "];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self getValue])))];
        [stringBuffer append:" Default: "];
        [stringBuffer appendint:((int32_t) ((int32_t) ([self getDefaultValue])))];
        [stringBuffer append:" Modifiable: "];
        [stringBuffer appendboolean:((bool) ([self isModifiable]))];
        return [stringBuffer toString];
}


- (void) setModifiable:(bool)modifiable {
        self->modifiable = modifiable;
}


- (bool) isModifiable {
        return self->modifiable;
}

@end

