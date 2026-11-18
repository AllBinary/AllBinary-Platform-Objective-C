#ifndef ORG_ALLBINARY_GAME_SCORE_BASICHIGHSCORESFACTORY_H
#define ORG_ALLBINARY_GAME_SCORE_BASICHIGHSCORESFACTORY_H
// Generated Code Do Not Modify
// package org.allbinary.game.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicHighScoresFactory;
@class GameInfo;
@class LogUtil;
@class SoftwareInformation;
@class AbeClientInformationInterface;
@class HighScoresBase;
@class HighScores;
@class HighScoresResultsListener;
@class RecordStoreHighScores;
@class ScoreComparator;
@class HighScoresHelper2;
@class HighScoresHelperBaseInterface;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h")
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#endif
#include "org/allbinary/game/score/HighScoresBase.h"
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif

@interface BasicHighScoresFactory : HighScoresBase {
@public
    LogUtil* logUtil;
    AbeClientInformationInterface* abeClientInformation;
    HighScores** highScoresArray;
    const char* TOP;
    const char* SCORES;
    const char* PERSONAL_HIGH_SCORES;
    const char* FETCH;
}
- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(SoftwareInformation*)softwareInformation;
- (void) initFields;
- (void) fetchHighScores:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener;
- (void) fetchHighScoresPreload:(GameInfo*)gameInfo :(HighScoresResultsListener*)highScoresResultsListener :(bool)preload;
- (HighScoresHelperBaseInterface*) createHighScoresHelper;
+ (bool) loaded:(int32_t)index2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicHighScoresFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_BASICHIGHSCORESFACTORY_H
