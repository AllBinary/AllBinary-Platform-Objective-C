// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresHelper.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/HighScores.h"



void HighScoresHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresHelper

- (void) initFields {
    self->circularIndexUtil = [CircularIndexUtil createInstanceAt:0 :0];
    self->lastIndex = -1;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setHighScoresArray:(HighScores**)highScoresArrayP {
        [super setHighScoresArray:highScoresArrayP];
        [self->circularIndexUtil setSize:java_array_length(self->highScoresArrayP)];
}


- (HighScores*) getNextHighScores {
        HighScores* highScores = self->highScoresArrayP[[self->circularIndexUtil getIndex]];
        int32_t index = 0;
        while (([highScores getTotal] < 1 || self->lastIndex == [self->circularIndexUtil getIndex]) && index < java_array_length(self->highScoresArrayP)) {
            [self->circularIndexUtil next];
            highScores = self->highScoresArrayP[[self->circularIndexUtil getIndex]];
            index++;
        }
        self->lastIndex = [self->circularIndexUtil getIndex];
        return highScores;
}


- (bool) isAnyHighScores {
        if (java_array_length(self->highScoresArrayP) < 1) {
            return false;
        }
        bool anyScores = false;
        HighScores* highScores = nullptr;
        for (int32_t index = java_array_length(self->highScoresArrayP) - 1; index >= 0; index--) {
            highScores = self->highScoresArrayP[index];
            if ([highScores getTotal] > 0) {
                anyScores = true;
            }
        }
        return anyScores;
}

@end

