#ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCOREUTIL_H
#define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCOREUTIL_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.score.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScoreUtil;
@class Command;
@class CommandListener;
@class GameInfo;
@class HighScore;
@class HighScoreNamePersistanceSingleton;
@class HighScores;
@class HighScoresFactoryInterface;
@class HighScoresHelperBaseInterface;
@class HighScoresResultsListener;
@class MyCanvas;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class CommonStrings;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/score/HighScore.h")
#include "org/allbinary/game/score/HighScore.h"
#endif
#if __has_include("org/allbinary/game/score/HighScores.h")
#include "org/allbinary/game/score/HighScores.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresFactoryInterface.h")
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoresHelperBaseInterface.h")
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#endif
#include "org/allbinary/game/score/HighScoresResultsListener.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h")
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface HighScoreUtil : ABObject <HighScoresResultsListener> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    HighScoresFactoryInterface* highScoresFactoryInterface;
    HighScores** highScoresArray;
    HighScore* highScore;
    AbeClientInformationInterface* abeClientInformation;
    GameInfo* gameInfo;
    HighScoresHelperBaseInterface* highScoresHelper;
    bool firstTime;
}
- (instancetype) init:(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresHelperBaseInterface*)highScoresHelper :(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(CommandListener*)cmdListener :(const char*)name :(HighScore*)highScore;
- (void) initFields;
- (void) setHighScoresArray:(HighScores**)highScoresArray;
- (void) update:(const char*)name;
- (void) saveHighScore;
- (void) submit:(MyCanvas*)myCanvas;
@end

extern Command* HighScoreUtil_SUBMIT_TEXTBOX_COMMAND;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoreUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCOREUTIL_H
