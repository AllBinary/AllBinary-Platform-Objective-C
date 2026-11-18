// Generated Code Do Not Modify
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/game/score/HighScoreCommandsFactory.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"
#include "org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/HighScoresPaintable.h"
#include "org/allbinary/game/score/NoHighScoresFactory.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/graphics/paint/SimpleTextPaintable.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/thread/SecondaryThreadPool.h"
#include "org/allbinary/game/score/displayable/HighScoreRunnable.h"
#if __has_include("org/allbinary/game/score/displayable/ThreadPool.h")
#include "org/allbinary/game/score/displayable/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("javax/microedition/lcdui/ThreadPool.h")
#include "javax/microedition/lcdui/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/ThreadPool.h")
#include "org/allbinary/game/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/commands/ThreadPool.h")
#include "org/allbinary/game/commands/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ThreadPool.h")
#include "org/allbinary/game/displayable/canvas/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/layer/ThreadPool.h")
#include "org/allbinary/game/layer/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/paint/ThreadPool.h")
#include "org/allbinary/game/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/paint/ThreadPool.h")
#include "org/allbinary/game/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/game/score/ThreadPool.h")
#include "org/allbinary/game/score/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/color/ThreadPool.h")
#include "org/allbinary/graphics/color/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ThreadPool.h")
#include "org/allbinary/graphics/paint/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/ThreadPool.h")
#include "org/allbinary/logic/communication/log/ThreadPool.h"
#endif
#if __has_include("org/allbinary/logic/string/ThreadPool.h")
#include "org/allbinary/logic/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/string/ThreadPool.h")
#include "org/allbinary/string/ThreadPool.h"
#endif
#if __has_include("org/allbinary/thread/ThreadPool.h")
#include "org/allbinary/thread/ThreadPool.h"
#endif


const char* HighScoresCanvas_NAME = "HighScoresCanvas";

void HighScoresCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresCanvas

- (void) initFields {
    self->paintable = [NullPaintable getInstance];
    self->highScoreCommandsFactory = [HighScoreCommandsFactory getInstance];
    self->waitPaintable = [((SimpleTextPaintable*) [SimpleTextPaintable alloc]) init:self->commonStrings->PLEASE_WAIT_FOR_SERVER :[BasicColorFactory getInstance]->WHITE];
    
    
    
    self->highScoresHelper = [((HighScoresHelperBase*) [HighScoresHelperBase alloc]) init];
    
    
    self->currentCommand = self->highScoreCommandsFactory->HIGH_SCORE_COMMANDS[0];
    self->hasPainted = false;
}


- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager :(GameInfo*)gameInfo :(HighScoresPaintable*)paintable :(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresCanvasInputProcessorFactoryInterface*)highScoresCanvasInputProcessorFactoryInterface {
        self = [super init:commandListener :HighScoresCanvas_NAME :[allBinaryGameLayerManager getBackgroundBasicColor] :[allBinaryGameLayerManager getForegroundBasicColor]];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        self->highScoresPaintable = paintable;
        self->highScoresFactoryInterface = highScoresFactoryInterface;
        self->highScoresCanvasInputProcessor = [highScoresCanvasInputProcessorFactoryInterface getInstance:self];
        self->gameInfo = gameInfo;
        [self->waitPaintable setBasicColorP:[allBinaryGameLayerManager getForegroundBasicColor]];
        [[self getHighScoresPaintable] setBasicColorP:[allBinaryGameLayerManager getForegroundBasicColor]];
        self->colorFillPaintable = [[ColorFillPaintableFactory getInstance] getInstance:[allBinaryGameLayerManager getBackgroundBasicColor] :false];
        if (java_array_length([self->highScoresHelper getHighScoresArray]) == java_array_length([NoHighScoresFactory getInstance]->NO_HIGH_SCORES)) {
            [self setPaintable:self->waitPaintable];
        } else {
            [self->logUtil putF:"Show HighScores that are already loaded" :self :self->commonStrings->CONSTRUCTOR];
            [self updateCommand:self->currentCommand];
            [self setPaintable:[self getHighScoresPaintable]];
        }
        [[SecondaryThreadPool getInstance] runTask:[((HighScoreRunnable*) [HighScoreRunnable alloc]) init:self]];
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self removeAllCommands];
        [self addCommand:[GameCommandsFactory getInstance]->CLOSE_AND_SHOW_GAME_CANVAS];
        [self setCommandListener:cmdListener];
}


- (void) open {
        [super open];
        [self->highScoresCanvasInputProcessor open];
}


// throws Exception
- (void) close {
        [super close];
        [self->highScoresCanvasInputProcessor close];
}


- (void) paint:(Graphics*)graphics {
        [self->colorFillPaintable paint:graphics];
        [self->paintable paint:graphics];
        if (self->waitPaintable != self->paintable) {
            [self->highScoresCanvasInputProcessor paint:graphics];
        }
        [super paint:graphics];
        self->hasPainted = true;
}


- (void) executeUpdate {
        JAVA_TRY {
            [self->highScoresFactoryInterface fetchHighScores:[self getGameInfo] :self];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (HighScoresPaintable*) getHighScoresPaintable {
        return self->highScoresPaintable;
}


- (void) setHighScoresArray:(HighScores**)highScoresArray {
        JAVA_TRY {
            if (highScoresArray != nil) {
                [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->START] appendint:java_array_length(highScoresArray)] toString] :self :"setHighScoresArray"];
            } else {
                [self->logUtil putF:self->commonStrings->START :self :"setHighScoresArray"];
            }
            [self->highScoresHelper setHighScoresArray:highScoresArray];
            [self updateCommand:self->currentCommand];
            [self setPaintable:[self getHighScoresPaintable]];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) updateCommand:(Command*)command {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->START] append:[self->stringUtil toString:command]] toString] :self :self->commonStrings->UPDATE];
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        if ([self->highScoreCommandsFactory isHighScoreCommand:command]) {
            int32_t index = [self->highScoreCommandsFactory getIndex:command];
            int32_t nextIndex = index + 1;
            HighScores** highScoresArray = [self->highScoresHelper getHighScoresArray];
            if (nextIndex >= java_array_length(highScoresArray)) {
                nextIndex = 0;
            }
            if (java_array_length(highScoresArray) > 0) {
                [[self getHighScoresPaintable] setHighScores:highScoresArray[index]];
            } else {
                [[self getHighScoresPaintable] setHighScores:[NullHighScoresSingletonFactory getInstance]];
            }
            if (index != nextIndex) {
                [self removeAllCommands];
                [self addCommand:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS];
                [self addCommand:self->highScoreCommandsFactory->HIGH_SCORE_COMMANDS[nextIndex]];
            }
        }
        self->currentCommand = command;
        [self close];
        [super initMenu];
        [self open];
        [self->repaintBehavior onChangeRepaint:self];
}


- (GameInfo*) getGameInfo {
        return self->gameInfo;
}


- (void) setPaintable:(Paintable*)paintable {
        self->paintable = paintable;
        [self->repaintBehavior onChangeRepaint:self];
}

@end

