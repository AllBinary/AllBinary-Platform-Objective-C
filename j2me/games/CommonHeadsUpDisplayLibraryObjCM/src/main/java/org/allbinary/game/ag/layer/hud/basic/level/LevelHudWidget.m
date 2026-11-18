// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/level/LevelHudWidget.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"



void LevelHudWidget_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LevelHudWidget

- (void) initFields {
    
    
    
    self->levelNumberCharArray = [NullUtil getInstance]->NULL_CHAR_ARRAY;
    self->levelNumberTotalDigits = 0;
    self->offset = 0;
    
}


// throws Exception
+ (LevelHudWidget*) createHud:(int32_t)maxlevel :(int32_t)location :(int32_t)direction {
        return [((LevelHudWidget*) [LevelHudWidget alloc]) init:maxlevel :location :direction];
}


- (instancetype) init:(int32_t)maxlevel :(int32_t)location :(int32_t)direction {
        self = [super init:location :direction :2 :[BasicColorFactory getInstance]->GREY];
        [self initFields];
        self->primitiveLongUtil = [PrimitiveLongUtil createPowerOfTen:1000];
        const char* LEVEL = "Lv ";
        self->levelString = java_string_toCharArray(LEVEL);
        self->maxlevel = maxlevel;
        self->level = maxlevel;
        [self update];
        self->updateMaxHeight = 14;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->updateMaxWidth = [font getSize] * 4;
        self->offset = [font charsWidth:self->levelString :0 :java_array_length(self->levelString)] + [font getSize];
        [super updateMeasurement:graphics];
}


- (void) update {
        self->levelNumberCharArray = [self->primitiveLongUtil getCharArray:self->level];
        self->levelNumberTotalDigits = [self->primitiveLongUtil getCurrentTotalDigits];
}


- (void) setLevel:(int32_t)level {
        self->level = level;
        [self update];
}


- (void) nextLevel {
        self->level++;
        [self update];
}


- (void) previousLevel {
        self->level--;
        if (self->level < 0) {
            self->level = 0;
        }
        [self update];
}


- (bool) isComplete {
        if (self->level <= self->maxlevel) {
            return false;
        } else {
            return true;
        }
}


- (void) paint:(Graphics*)graphics {
        [super paintDX:graphics :self->levelString :0 :java_array_length(self->levelString) :self->levelNumberCharArray :0 :self->levelNumberTotalDigits :self->offset];
}


- (void) paintThreed:(Graphics*)graphics {
}

@end

