// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/StartIntermissionPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/FontDebugFactory.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameInfo.h")
#include "org/allbinary/game/displayable/canvas/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/GameInfo.h")
#include "org/allbinary/graphics/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/color/GameInfo.h")
#include "org/allbinary/graphics/color/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/color/GameInfo.h")
#include "org/allbinary/graphics/color/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/color/GameInfo.h")
#include "org/allbinary/graphics/color/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GameInfo.h")
#include "org/allbinary/graphics/displayable/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/font/GameInfo.h")
#include "org/allbinary/graphics/font/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/font/GameInfo.h")
#include "org/allbinary/graphics/font/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/font/GameInfo.h")
#include "org/allbinary/graphics/font/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/font/GameInfo.h")
#include "org/allbinary/graphics/font/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/paint/GameInfo.h")
#include "org/allbinary/graphics/paint/GameInfo.h"
#endif
#if __has_include("org/allbinary/logic/GameInfo.h")
#include "org/allbinary/logic/GameInfo.h"
#endif
#if __has_include("org/allbinary/logic/string/GameInfo.h")
#include "org/allbinary/logic/string/GameInfo.h"
#endif
#if __has_include("org/allbinary/logic/string/GameInfo.h")
#include "org/allbinary/logic/string/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/color/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/color/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/color/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/color/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/color/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/color/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/displayable/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/font/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/font/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/font/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/font/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/font/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/paint/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/paint/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void StartIntermissionPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StartIntermissionPaintable

- (void) initFields {
    self->fontDebugFactory = [FontDebugFactory getInstance];
    self->basicSetColorUtil = [BasicColorSetUtil getInstance];
    
    
    
    
    
    self->updateMyFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->myFontProcessor = self->updateMyFontProcessor;
    self->basicColor = [BasicColorFactory getInstance]->BLACK;
    
    self->lineYOffsetArray = [NullUtil getInstance]->NULL_INT_ARRAY;
    self->hasChanged = true;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->fontHeightP = 0;
    self->BEGIN_LEVEL = "Begin Level ";
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas :(const char**)stringArray :(BasicColor*)basicColor :(Font*)font {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
        self->stringArray = stringArray;
        self->lastWidth = ((int32_t*) java_array_new(sizeof(int32_t), java_array_length(self->stringArray)));
        [self setBasicColorP:basicColor];
        self->color = [basicColor intValue];
        self->fontSize = [font getSize];
        self->font = font;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->fontHeightP = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        Font* existingFont = [graphics getFont];
        [self->fontDebugFactory setFont:self->font :graphics];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        [self->basicSetColorUtil setBasicColorP3:graphics :self->basicColor :self->color];
        int32_t beginWidth = 0;
        for (int32_t index = java_array_length(self->lineYOffsetArray) - 1; index >= 0; index--) {
            if (self->hasChanged) {
                self->lastWidth[index] = ([[graphics getFont] stringWidth:self->stringArray[index]] >> 1);
            }
            beginWidth = self->lastWidth[index];
            [graphics drawString:self->stringArray[index] :[displayInfo getLastHalfWidth] - beginWidth :[displayInfo getLastHalfHeight] - self->lineYOffsetArray[index] :self->anchor];
        }
        self->hasChanged = false;
        [self->fontDebugFactory setFont:existingFont :graphics];
}


- (void) update {
        int32_t level = [[[self->gameCanvas getLayerManager] getGameInfo] getCurrentLevel];
        self->stringArray[0] = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->BEGIN_LEVEL] appendint:level] toString];
        for (int32_t index = java_array_length(self->stringArray) - 1; index >= 1; index--) {
            self->stringArray[index] = self->EMPTY_STRING;
        }
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}

@end

