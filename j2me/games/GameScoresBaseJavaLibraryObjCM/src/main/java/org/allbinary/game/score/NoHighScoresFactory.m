// Generated Code Do Not Modify
#include "org/allbinary/game/score/NoHighScoresFactory.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/game/score/HighScoresBase.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresResultsListener.h"
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"


static NoHighScoresFactory* NoHighScoresFactory_instance;

void NoHighScoresFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoHighScoresFactory_instance = ((NoHighScoresFactory*) [((NoHighScoresFactory*) [NoHighScoresFactory alloc]) init]);
}

@implementation NoHighScoresFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->NO_HIGH_SCORES = ((HighScores**) java_array_new(sizeof(HighScores*), 0));
}


+ (NoHighScoresFactory*) getInstance {
        return (NoHighScoresFactory_staticInit(), NoHighScoresFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) fetchHighScores:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener {
        [self->logUtil putF:"Getting No HighScores" :self :"fetchHighScores"];
        [((id<HighScoresResultsListener>) highScoresResultsListener) setHighScoresArray:self->NO_HIGH_SCORES];
}


- (HighScoresHelperBaseInterface*) createHighScoresHelper {
        return ((HighScoresHelperBase*) [((HighScoresHelperBase*) [HighScoresHelperBase alloc]) init]);
}

@end

