// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/NumberStringHud.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/graphics/hud/BasicHudFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"



void NumberStringHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NumberStringHud

- (void) initFields {
    
    
    
    
    
    self->offset = 0;
    
    self->valueTotalDigits = 0;
}


- (instancetype) init:(const char*)prependString :(int32_t)max :(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor {
        self = [super init:location :direction :bufferZone :basicColor];
        [self initFields];
        self->prependString = prependString;
        self->PREPEND_STRING = java_string_toCharArray(prependString);
        self->valueString = [PrimitiveLongSingleton getInstance]->NUMBER_CHAR_ARRAYS[0];
        self->primitiveLongUtil = [PrimitiveLongUtil createPowerOfTen:max + 1];
        self->max = max;
        self->value = 0;
        if (direction == 0) {
            java_throw(java_exception_new("RuntimeException", [BasicHudFactory getInstance]->DIRECTION_EXCEPTION));
        }
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->offset = [font stringWidth:self->prependString] + [MyFontProcessor defaultCharWidth:font];
        [super updateMeasurement:graphics];
}


- (int32_t) get {
        return self->value;
}


- (void) add:(int32_t)value {
        [self set:self->value + value];
}


- (void) set:(int32_t)value {
        self->value = value;
        if (self->value > self->max) {
            self->value = 0;
        }
        self->valueString = [self->primitiveLongUtil getCharArray:self->value];
        self->valueTotalDigits = [self->primitiveLongUtil getCurrentTotalDigits];
}


- (void) reduce:(int32_t)value {
        [self set:self->value - value];
}


- (void) paint:(Graphics*)graphics {
        [super paintDX:graphics :self->PREPEND_STRING :0 :java_array_length(self->PREPEND_STRING) :self->valueString :0 :self->valueTotalDigits :self->offset];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->myFontProcessor process:graphics];
        uint16_t* charArray = self->PREPEND_STRING;
        int32_t len = java_array_length(self->PREPEND_STRING);
        uint16_t* charArray2 = self->valueString;
        int32_t len2 = self->valueTotalDigits;
        [self->basicSetColorUtil setBasicColorP:graphics :[self getBasicColorP]];
        [graphics drawChars:charArray :0 :len :x :y :0];
        [graphics drawChars:charArray2 :0 :len2 :x - self->offset :y :0];
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

