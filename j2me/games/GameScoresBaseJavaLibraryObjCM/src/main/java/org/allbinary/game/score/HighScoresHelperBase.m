// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresHelperBase.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#include "org/allbinary/game/score/LastFetchHighScoresFactory.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void HighScoresHelperBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresHelperBase

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->highScoresArrayP = [LastFetchHighScoresFactory getInstance]->highScoresArray;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) setHighScoresArray:(HighScores**)highScoresArrayP {
        if (highScoresArrayP != nil) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:commonStrings->START] appendint:java_array_length(highScoresArrayP)] toString] :self :"setHighScoresArray"];
        } else {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil putF:commonStrings->START :self :"setHighScoresArray"];
        }
        self->highScoresArrayP = highScoresArrayP;
}


- (HighScores*) getNextHighScores {
        return [NullHighScoresSingletonFactory getInstance];
}


- (bool) isAnyHighScores {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) setSelectedHighScores:(HighScores*)selectedHighScores {
}


- (HighScores*) getSelectedHighScores {
        return [NullHighScoresSingletonFactory getInstance];
}


- (HighScores**) getHighScoresArray {
        return self->highScoresArrayP;
}


- (void) selectHighScores {
}

@end

