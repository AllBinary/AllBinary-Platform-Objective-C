// Generated Code Do Not Modify
#include "org/allbinary/game/score/BasicHighScoresFactory.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/system/SoftwareInformation.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/score/HighScoresBase.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresResultsListener.h"
#include "org/allbinary/game/score/RecordStoreHighScores.h"
#include "org/allbinary/game/score/ScoreComparator.h"
#include "org/allbinary/game/score/HighScoresHelper2.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"



void BasicHighScoresFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicHighScoresFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->highScoresArray = ((HighScores**) java_array_new(sizeof(HighScores*), 1));
    self->TOP = "Top";
    self->SCORES = "Scores";
    self->PERSONAL_HIGH_SCORES = "Personal Top Scores";
    self->FETCH = "fetchHighScores";
}


- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(SoftwareInformation*)softwareInformation {
    self = [super init];
    [self initFields];
        self->abeClientInformation = abeClientInformation;
    return self;
}


- (void) fetchHighScores:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener {
        [self->logUtil putF:"Getting Local HighScores" :self :self->FETCH];
        [self fetchHighScoresPreload:gameInfo :highScoresResultsListener :true];
}


- (void) fetchHighScoresPreload:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener :(bool)preload {
        JAVA_TRY {
            self->highScoresArray[0] = [RecordStoreHighScores getInstance:self->abeClientInformation :gameInfo :self->TOP :self->PERSONAL_HIGH_SCORES :self->SCORES :((ScoreComparator*) [((ScoreComparator*) [ScoreComparator alloc]) init:true])];
            [((id<HighScoresResultsListener>) highScoresResultsListener) setHighScoresArray:self->highScoresArray];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->FETCH :e];
        } JAVA_END_TRY;
}


- (HighScoresHelperBaseInterface*) createHighScoresHelper {
        return ((HighScoresHelper2*) [((HighScoresHelper2*) [HighScoresHelper2 alloc]) init]);
}


+ (bool) loaded:(int32_t)index2 {
        if (index2 >= 0) {
            return true;
        }
        return false;
}

@end

