// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/EndGameInfo.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void EndGameInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation EndGameInfo

- (void) initFields {
    self->NORMAL_GAME_OVER_WIN = "You Won";
    self->TEASER_DEMO_GAME_END_LAST_LEVEL = "End of Demo.";
    self->TEASER_DEMO_GAME_END = "Demo Game Over.";
    self->gameOverStr = [StringUtil getInstance]->EMPTY_STRING;
    self->winStr = self->gameOverStr;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) update:(GameInfo*)gameInfo :(MyCanvas*)myCanvas {
        if ([gameInfo isLastLevel]) {
            [self setWinStr:self->TEASER_DEMO_GAME_END_LAST_LEVEL];
            [self setGameOverStr:self->TEASER_DEMO_GAME_END_LAST_LEVEL];
        } else {
            [self setWinStr:self->NORMAL_GAME_OVER_WIN];
            [self setGameOverStr:self->TEASER_DEMO_GAME_END];
        }
}


- (const char*) getGameOverStr {
        return self->gameOverStr;
}


- (void) setGameOverStr:(const char*)gameOverStr {
        self->gameOverStr = gameOverStr;
}


- (const char*) getWinStr {
        return self->winStr;
}


- (void) setWinStr:(const char*)winStr {
        self->winStr = winStr;
}

@end

