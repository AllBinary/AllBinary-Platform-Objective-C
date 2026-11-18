// Generated Code Do Not Modify
#include "org/allbinary/game/paint/AboutPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"



void AboutPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AboutPaintable

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->ABOUT = [CanvasStrings getInstance]->ABOUT;
    
    
    self->paintableArray = ((Paintable**) java_array_from(sizeof(Paintable*), sizeof((Paintable*[]){ self }) / sizeof(Paintable*), (Paintable*[]){ self }));
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->charHeight = 0;
    self->aboutBeginWidth = 0;
    
    
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


+ (AboutPaintable*) getInstance:(const char**)info :(const char**)developers {
        return [((AboutPaintable*) [AboutPaintable alloc]) init:info :developers];
}


- (instancetype) init:(const char**)info :(const char**)developers {
    self = [super init];
    [self initFields];
        self->info = info;
        self->infoBeginWidth = ((int32_t*) java_array_new(sizeof(int32_t), java_array_length(self->info)));
        self->developers = developers;
        self->developersBeginWidth = ((int32_t*) java_array_new(sizeof(int32_t), java_array_length(self->developers)));
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->charHeight = [font getHeight];
        self->aboutBeginWidth = ([font stringWidth:self->ABOUT] >> 1);
        int32_t infoSize = java_array_length(self->info);
        for (int32_t index = 0; index < infoSize; index++) {
            self->infoBeginWidth[index] = ([font stringWidth:self->info[index]] >> 1);
        }
        int32_t size = java_array_length(self->developers);
        for (int32_t index = 0; index < size; index++) {
            self->developersBeginWidth[index] = ([font stringWidth:self->developers[index]] >> 1);
        }
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (Paintable**) getPaintableArrayInstance {
        return self->paintableArray;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t halfWidth = [self->displayInfoSingleton getLastHalfWidth];
        [graphics drawString:self->ABOUT :halfWidth - self->aboutBeginWidth :2 * self->charHeight :self->anchor];
        int32_t infoSize = java_array_length(self->info);
        for (int32_t index = 0; index < infoSize; index++) {
            [graphics drawString:self->info[index] :halfWidth - self->infoBeginWidth[index] :(4 + index) * self->charHeight :self->anchor];
        }
        int32_t size = java_array_length(self->developers);
        for (int32_t index = 0; index < size; index++) {
            [graphics drawString:self->developers[index] :halfWidth - self->developersBeginWidth[index] :(5 + infoSize + index) * self->charHeight :self->anchor];
        }
}

@end

