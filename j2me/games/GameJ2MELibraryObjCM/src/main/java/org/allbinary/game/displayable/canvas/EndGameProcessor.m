// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/EndGameProcessor.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/TimeDelayHelper.h")
#include "org/allbinary/game/displayable/canvas/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/canvas/TimeDelayHelper.h")
#include "org/allbinary/canvas/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/score/TimeDelayHelper.h")
#include "org/allbinary/game/score/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/score/TimeDelayHelper.h")
#include "org/allbinary/game/score/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/score/TimeDelayHelper.h")
#include "org/allbinary/game/score/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/state/TimeDelayHelper.h")
#include "org/allbinary/game/state/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/paint/TimeDelayHelper.h")
#include "org/allbinary/graphics/paint/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/HighScoresPaintable.h")
#include "org/allbinary/game/displayable/canvas/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/canvas/HighScoresPaintable.h")
#include "org/allbinary/canvas/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresPaintable.h")
#include "org/allbinary/game/score/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/game/state/HighScoresPaintable.h")
#include "org/allbinary/game/state/HighScoresPaintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/HighScoresPaintable.h")
#include "org/allbinary/graphics/paint/HighScoresPaintable.h"
#endif



void EndGameProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation EndGameProcessor

- (void) initFields {
    self->gameStateFactory = [GameStateFactory getInstance];
    
    self->WAIT = 5000LL;
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


// throws Exception
- (void) process {
        if ([self->gameCanvas isHighScoreSubmitted]) {
            if ([[self->gameCanvas getGameStateTimeHelper] isElapsedTNT:self->WAIT]) {
                if ([self->gameCanvas getGameState] == self->gameStateFactory->SHOW_END_RESULT_GAME_STATE) {
                    HighScoresHelperBase* highScoresBase = ((HighScoresHelperBase*) self->gameCanvas->highScoresHelper);
                    HighScores* highScores = [highScoresBase getSelectedHighScores];
                    if (highScores != [NullHighScoresSingletonFactory getInstance]) {
                        [highScoresBase selectHighScores];
                        [[self->gameCanvas getRealHighScoresPaintable] setHighScores:highScores];
                        [self->gameCanvas setGameState:self->gameStateFactory->SHOW_HIGH_SCORE_GAME_STATE];
                        [self->gameCanvas setHighScoresPaintable:[self->gameCanvas getRealHighScoresPaintable]];
                    }
                } else if ([self->gameCanvas getGameState] == self->gameStateFactory->SHOW_HIGH_SCORE_GAME_STATE) {
                    [self->gameCanvas setGameState:self->gameStateFactory->SHOW_END_RESULT_GAME_STATE];
                    [self->gameCanvas setHighScoresPaintable:[NullPaintable getInstance]];
                }
            }
        }
}

@end

