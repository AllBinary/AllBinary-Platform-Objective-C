// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/score/ScoreHudWidget.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"



void ScoreHudWidget_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScoreHudWidget


// throws Exception
+ (ScoreHudWidget*) getInstance:(int32_t)maxscore :(int32_t)location :(int32_t)direction {
        return [((ScoreHudWidget*) [ScoreHudWidget alloc]) init:maxscore :location :direction :2 :[BasicColorFactory getInstance]->GREY];
}


- (instancetype) init:(int32_t)maxscore :(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor {
        self = [super init:"Pts " :maxscore :location :direction :bufferZone :basicColor];
        self->updateMaxHeight = 14;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->updateMaxWidth = [font getSize] * 5;
        [super updateMeasurement:graphics];
}

@end

