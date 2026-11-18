// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresHelper2.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/score/HighScores.h"



void HighScoresHelper2_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresHelper2

- (void) initFields {
    self->circularIndexUtil = [CircularIndexUtil createInstanceAt:0 :0];
    self->selectedHighScores = [NullHighScoresSingletonFactory getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setSelectedHighScores:(HighScores*)selectedHighScores {
        self->selectedHighScores = selectedHighScores;
}


- (HighScores*) getSelectedHighScores {
        return self->selectedHighScores;
}


- (void) setHighScoresArray:(HighScores**)highScoresArrayP {
        [super setHighScoresArray:highScoresArrayP];
        [self->circularIndexUtil setSize:java_array_length(self->highScoresArrayP)];
        [self selectHighScores];
}


- (void) selectHighScores {
        if (java_array_length(self->highScoresArrayP) == 0) {
            [self setSelectedHighScores:[NullHighScoresSingletonFactory getInstance]];
            return;
        }
        [self->circularIndexUtil next];
        HighScores* highScores = self->highScoresArrayP[[self->circularIndexUtil getIndex]];
        int32_t index = 0;
        while ([highScores getTotal] < 1 && index < java_array_length(self->highScoresArrayP)) {
            highScores = self->highScoresArrayP[[self->circularIndexUtil next]];
            index++;
        }
        [self setSelectedHighScores:highScores];
}

@end

