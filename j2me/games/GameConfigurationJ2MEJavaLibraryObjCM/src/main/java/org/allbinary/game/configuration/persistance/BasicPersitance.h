#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_BASICPERSITANCE_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_BASICPERSITANCE_H
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
// package org.allbinary.game.configuration.persistance

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicPersitance;
@class RecordStore;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class AbeClientInformationInterface;
@class PlatformRecordIdUtil;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class PersistanceStrings;
@class NullRecordStore;
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
#if __has_include("org/allbinary/game/configuration/persistance/PersistanceStrings.h")
#include "org/allbinary/game/configuration/persistance/PersistanceStrings.h"
#endif

@interface BasicPersitance : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    PersistanceStrings* persistanceStrings;
    PlatformRecordIdUtil* platformRecordIdUtil;
    const char* recordId;
    BasicArrayList* valueList;
    BasicArrayList* idList;
}
- (instancetype) init:(const char*)recordId;
- (void) initFields;
- (void) deleteRecoreStore:(AbeClientInformationInterface*)abeClientInformation;
- (void) deleteAll:(AbeClientInformationInterface*)abeClientInformation;
- (void) delete:(AbeClientInformationInterface*)abeClientInformation :(int32_t)deleteId;
- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation;
- (BasicArrayList*) getList;
- (BasicArrayList*) getIds;
- (void) clear;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicPersitance_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_BASICPERSITANCE_H
