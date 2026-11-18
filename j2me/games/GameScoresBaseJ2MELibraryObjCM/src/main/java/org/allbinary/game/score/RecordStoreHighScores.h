#ifndef ORG_ALLBINARY_GAME_SCORE_RECORDSTOREHIGHSCORES_H
#define ORG_ALLBINARY_GAME_SCORE_RECORDSTOREHIGHSCORES_H
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
// package org.allbinary.game.score

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RecordStoreHighScores;
@class RecordComparator;
@class RecordEnumeration;
@class RecordStore;
@class RecordStoreException;
@class RecordStoreNotFoundException;
@class TsUtil;
@class GameInfo;
@class NullRecordComparator;
@class NullRecordFilter;
@class NullRecordStore;
@class StdUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class AbeClientInformationInterface;
@class PlatformRecordIdUtil;
@class CommonSeps;
@class CommonStrings;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class HighScores;
@class HighScore;
@class ScoreComparator;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/EOFException.h"
#include "java/io/IOException.h"
#if __has_include("javax/microedition/rms/RecordComparator.h")
#include "javax/microedition/rms/RecordComparator.h"
#endif
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/game/GameInfo.h")
#include "org/allbinary/game/GameInfo.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h")
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#endif
#if __has_include("org/allbinary/persistance/PlatformRecordIdUtil.h")
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#include "org/allbinary/game/score/HighScores.h"

@interface RecordStoreHighScores : HighScores {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    PlatformRecordIdUtil* platformRecordIdUtil;
    TsUtil* tsUtil;
    const char* RECORD_ID;
    int32_t MAXHIGHSCORES;
    GameInfo* gameInfo;
    AbeClientInformationInterface* abeClientInformation;
    RecordComparator* recordComparatorInterface;
}
- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)name :(const char*)heading :(const char*)columnTwoHeading :(RecordComparator*)recordComparatorInterface;
- (void) initFields;
+ (HighScores*) getInstance:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)highScoreName :(const char*)heading :(const char*)columnTwoHeading :(RecordComparator*)recordComparatorInterface;
- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation;
- (void) addHighScore:(HighScore*)newHighScore;
- (void) removeLowestHighScore;
- (void) load_;
- (bool) isTooManyHighScores;
- (bool) isBestScore:(HighScore*)newHighScore;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RecordStoreHighScores_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_RECORDSTOREHIGHSCORES_H
