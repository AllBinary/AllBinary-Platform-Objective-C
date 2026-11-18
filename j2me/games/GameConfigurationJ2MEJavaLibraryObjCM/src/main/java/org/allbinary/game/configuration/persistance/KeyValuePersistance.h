#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_KEYVALUEPERSISTANCE_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_KEYVALUEPERSISTANCE_H
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
@class KeyValuePersistance;
@class RecordEnumeration;
@class RecordStore;
@class TsUtil;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class CommonSeps;
@class ABHashtable;
@class HashtableUtil;
@class BasicPersitance;
@class NullRecordStore;
@class NullRecordFilter;
@class NullRecordComparator;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#include "org/allbinary/game/configuration/persistance/BasicPersitance.h"

@interface KeyValuePersistance : BasicPersitance {
@public
    TsUtil* tsUtil;
}
- (instancetype) init:(const char*)recordId;
- (void) initFields;
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation;
- (void) loadAllSize:(AbeClientInformationInterface*)abeClientInformation :(int32_t)size;
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(ABHashtable*)hashtable;
- (ABHashtable*) get:(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeyValuePersistance_staticInit(void);

#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_KEYVALUEPERSISTANCE_H
