// Generated Code Do Not Modify
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/score/HighScores.h"


static HighScores* NullHighScoresSingletonFactory_SINGLETON;

void NullHighScoresSingletonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullHighScoresSingletonFactory_SINGLETON = [((HighScores*) [HighScores alloc]) init:[CommonStrings getInstance]->LOADING :"High Scores Not Loaded" :[CommonStrings getInstance]->PERIODS];
}

@implementation NullHighScoresSingletonFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (HighScores*) getInstance {
        return (NullHighScoresSingletonFactory_staticInit(), NullHighScoresSingletonFactory_SINGLETON);
}

@end

