// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GamePerformanceInitUpdatePaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"



void GamePerformanceInitUpdatePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GamePerformanceInitUpdatePaintable

- (void) initFields {
    self->halfHeight = [[DisplayInfoSingleton getInstance] getLastHalfHeight];
    self->yArray = ((int32_t*) java_array_from(sizeof(int32_t), sizeof((int32_t[]){ self->halfHeight + 30, self->halfHeight + 30, self->halfHeight + 30 + 15, self->halfHeight + 30 + 15, self->halfHeight + 30 + 30, self->halfHeight + 30 + 30, self->halfHeight + 30 + 45, self->halfHeight + 30 + 45 }) / sizeof(int32_t), (int32_t[]){ self->halfHeight + 30, self->halfHeight + 30, self->halfHeight + 30 + 15, self->halfHeight + 30 + 15, self->halfHeight + 30 + 30, self->halfHeight + 30 + 30, self->halfHeight + 30 + 45, self->halfHeight + 30 + 45 }));
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->baseRefreshHelperCharArray = ((uint16_t**) java_array_new2(sizeof(uint16_t), 0, 0));
    self->defaultStringWidth = 0;
    self->RED = [[BasicColorFactory getInstance]->RED intValue];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->defaultStringWidth = [MyFontProcessor defaultStringWidth:font :2];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) init_ {
}


- (void) update {
        self->baseRefreshHelperCharArray = [[GameStatisticsFactory getInstance] to2DCharArray];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [graphics setColor:self->RED];
        uint16_t* charArray = nullptr;
        uint16_t* charArray2 = nullptr;
        int32_t size2 = 0;
        int32_t size3 = 0;
        int32_t size = java_array_length(self->baseRefreshHelperCharArray) - 2;
        for (int32_t index = size; index >= 0; index -= 2) {
            charArray = self->baseRefreshHelperCharArray[index];
            charArray2 = self->baseRefreshHelperCharArray[index + 1];
            size2 = java_array_length(charArray);
            size3 = java_array_length(charArray2);
            [graphics drawChars:charArray :0 :size2 :0 :self->yArray[index] :0];
            [graphics drawChars:charArray2 :0 :size3 :size2 * self->defaultStringWidth :self->yArray[index + 1] :0];
        }
}

@end

