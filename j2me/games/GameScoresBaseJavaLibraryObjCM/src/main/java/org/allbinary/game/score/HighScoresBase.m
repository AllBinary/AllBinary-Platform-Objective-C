// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresBase.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresResultsListener.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"



void HighScoresBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresBase

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) fetchHighScores:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) fetchHighScoresPreload:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener :(bool)preload {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (HighScoresHelperBaseInterface*) createHighScoresHelper {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

