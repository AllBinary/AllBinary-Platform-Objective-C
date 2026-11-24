#ifndef ORG_ALLBINARY_GAME_SCORE_HIGHSCORENAMEPERSISTANCESINGLETON_H
#define ORG_ALLBINARY_GAME_SCORE_HIGHSCORENAMEPERSISTANCESINGLETON_H
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
@class HighScoreNamePersistanceSingleton;
@class RecordEnumeration;
@class RecordStore;
@class RecordStoreException;
@class TsUtil;
@class GameInfo;
@class NullRecordComparator;
@class NullRecordFilter;
@class NullRecordStore;
@class LogUtil;
@class PreLogUtil;
@class ExceptionUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class PlatformRecordIdUtil;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/persistance/PlatformRecordIdUtil.h")
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface HighScoreNamePersistanceSingleton : ABObject {
@public
    LogUtil* logUtil;
    TsUtil* tsUtil;
    CommonStrings* commonStrings;
    PlatformRecordIdUtil* platformRecordIdUtil;
    const char* RECORD_ID;
    const char* name;
    BasicArrayList* nameBasicArrayList;
}
- (instancetype) init;
- (void) initFields;
+ (HighScoreNamePersistanceSingleton*) getInstance;
- (void) clear;
- (void) deleteAll:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo;
- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation;
- (void) delete:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(int32_t)deleteId;
- (BasicArrayList*) getIds;
- (const char*) loadMethod:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo;
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)name;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoreNamePersistanceSingleton_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_SCORE_HIGHSCORENAMEPERSISTANCESINGLETON_H
