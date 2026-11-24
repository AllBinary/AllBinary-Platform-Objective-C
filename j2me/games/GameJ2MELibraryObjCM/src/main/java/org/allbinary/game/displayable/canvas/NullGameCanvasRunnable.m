// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullGameCanvasRunnable.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Item.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif


NullGameCanvasRunnable* NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE;

void NullGameCanvasRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullGameCanvasRunnable_NULL_GAME_CANVAS_RUNNABLE = ((NullGameCanvasRunnable*) [((NullGameCanvasRunnable*) [NullGameCanvasRunnable alloc]) init]);
}

@implementation NullGameCanvasRunnable

- (void) initFields {
    self->gameStateFactory = [GameStateFactory getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getTitle {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) isInitialized {
        return false;
}


- (bool) isPaused {
        return false;
}


- (void) unPause {
}


- (void) pause {
}


- (bool) isHighScoreSubmitted {
        return false;
}


// throws Exception
- (void) setHighScoreSubmitted:(bool)highScoreSubmitted {
}


// throws Exception
- (void) processGameOver {
}


- (bool) isGameOver {
        return false;
}


- (void) initCommands:(CommandListener*)cmdListener {
}


// throws Exception
- (ABHashtable*) getCurrentStateHashtable {
        return [StdUtil getInstance]->NULL_TABLE;
}


// throws Exception
- (ABHashtable*) getLoadStateHashtable {
        return [StdUtil getInstance]->NULL_TABLE;
}


// throws Exception
- (void) setLoadStateHashtable:(ABHashtable*)hashtable {
}


- (int32_t) getType {
        return -1;
}


// throws Exception
- (void) setGameState:(GameState*)gameState {
}


- (GameState*) getGameState {
        return self->gameStateFactory->NO_GAME_STATE;
}


- (void) itemStateChanged:(Item*)item {
}


- (void) paint:(Graphics*)graphics {
}


- (void) paintThreed:(Graphics*)graphics {
}


- (bool) isRunning {
        return false;
}


- (void) setRunning:(bool)isRunning {
}


// throws Exception
- (void) setThread:(Thread*)thread {
}


- (void) run {
}

@end

