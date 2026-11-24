// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresCanvasLevelChangeInputProcessor.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#include "org/allbinary/game/input/event/GameKeyEventUtil.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventHandler.h")
#include "org/allbinary/game/input/event/GameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/score/GameInfo.h")
#include "org/allbinary/game/score/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameInfo.h")
#include "org/allbinary/game/input/event/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameInfo.h")
#include "org/allbinary/game/input/event/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/GameInfo.h")
#include "org/allbinary/game/score/displayable/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/GameInfo.h")
#include "org/allbinary/graphics/GameInfo.h"
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
#if __has_include("org/allbinary/util/GameInfo.h")
#include "org/allbinary/util/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif
#if __has_include("org/allbinary/game/score/GameInfo.h")
#include "org/allbinary/game/score/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameInfo.h")
#include "org/allbinary/game/input/event/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameInfo.h")
#include "org/allbinary/game/input/event/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/GameInfo.h")
#include "org/allbinary/game/score/displayable/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/GameInfo.h")
#include "org/allbinary/graphics/GameInfo.h"
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
#if __has_include("org/allbinary/util/GameInfo.h")
#include "org/allbinary/util/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif



void HighScoresCanvasLevelChangeInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresCanvasLevelChangeInputProcessor

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->INSTRUCTIONS = "(Right = Next Track, Left = Previous Track)";
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->fontHeight = 0;
}


- (instancetype) init:(HighScoresCanvas*)highScoresCanvas {
        self = [super init:highScoresCanvas];
        [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->fontHeight = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) open {
        [[GameKeyEventHandler getInstance] addListener:self];
}


- (void) close {
        [[GameKeyEventHandler getInstance] removeListener:self];
}


// synchronized
- (void) update {
        BasicArrayList* list = [self getGameKeyEventList];
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            id anyType = list->objectArray[index];
            int32_t key = [GameKeyEventUtil getKey:anyType];
            if (key == (Canvas_staticInit(), Canvas_RIGHT)) {
                [[[self getHighScoresCanvas] getGameInfo] nextGameLevel];
            } else if (key == (Canvas_staticInit(), Canvas_LEFT)) {
                [[[self getHighScoresCanvas] getGameInfo] previousGameLevel];
            }
            [[self getHighScoresCanvas] executeUpdate];
        }
        [list clear];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t width = [self->displayInfoSingleton getLastWidth];
        int32_t topScoresWidth = ([[graphics getFont] stringWidth:self->INSTRUCTIONS] >> 1);
        [graphics drawString:self->INSTRUCTIONS :(width >> 1) - topScoresWidth :self->fontHeight * 2 :self->anchor];
}

@end

