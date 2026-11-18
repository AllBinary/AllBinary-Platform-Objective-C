// Generated Code Do Not Modify
#include "org/allbinary/game/score/RemoteErrorHighScoresSingletonFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/score/HighScores.h"


static HighScores* RemoteErrorHighScoresSingletonFactory_SINGLETON;

void RemoteErrorHighScoresSingletonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RemoteErrorHighScoresSingletonFactory_SINGLETON = [((HighScores*) [HighScores alloc]) init:[CommonStrings getInstance]->LOADING :"Remote High Scores Did Not Load" :[CommonStrings getInstance]->PERIODS];
}

@implementation RemoteErrorHighScoresSingletonFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (HighScores*) getInstance {
        return (RemoteErrorHighScoresSingletonFactory_staticInit(), RemoteErrorHighScoresSingletonFactory_SINGLETON);
}

@end

