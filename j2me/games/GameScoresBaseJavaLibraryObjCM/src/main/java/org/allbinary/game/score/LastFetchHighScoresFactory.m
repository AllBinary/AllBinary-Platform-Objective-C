// Generated Code Do Not Modify
#include "org/allbinary/game/score/LastFetchHighScoresFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/score/NoHighScoresFactory.h"
#include "org/allbinary/game/score/HighScores.h"


static id LastFetchHighScoresFactory_instance;

void LastFetchHighScoresFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LastFetchHighScoresFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation LastFetchHighScoresFactory

- (void) initFields {
    self->highScoresArray = [NoHighScoresFactory getInstance]->NO_HIGH_SCORES;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LastFetchHighScoresFactory*) getInstance {
        if ((LastFetchHighScoresFactory_staticInit(), LastFetchHighScoresFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            LastFetchHighScoresFactory_instance = [((LastFetchHighScoresFactory*) [LastFetchHighScoresFactory alloc]) init];
        }
        return ((LastFetchHighScoresFactory*) (LastFetchHighScoresFactory_staticInit(), LastFetchHighScoresFactory_instance));
}

@end

