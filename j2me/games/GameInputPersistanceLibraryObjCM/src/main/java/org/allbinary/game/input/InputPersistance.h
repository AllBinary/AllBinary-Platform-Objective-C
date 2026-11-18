#ifndef ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
#define ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputPersistance;
@class RecordEnumeration;
@class RecordStore;
@class TsUtil;
@class BasicPersitance;
@class NullRecordComparator;
@class NullRecordFilter;
@class NullRecordStore;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class CommonSeps;
@class BasicArrayList;
@class HashtableUtil;
@class StdUtil;
@class ABHashtable;
@class Input;
@class GameKeyMappingFactory;
@class InputFactory;
#include "java/io/ByteArrayInputStream.h"
#include "java/io/ByteArrayOutputStream.h"
#include "java/io/DataInputStream.h"
#include "java/io/DataOutputStream.h"
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#include "org/allbinary/game/configuration/persistance/BasicPersitance.h"
#if __has_include("org/allbinary/util/HashtableUtil.h")
#include "org/allbinary/util/HashtableUtil.h"
#endif
#include "java/lang/Integer.h"

//GameInputPersistanceLibrary
@interface InputPersistance : BasicPersitance {
@public
    TsUtil* tsUtil;
    HashtableUtil* hashtableUtil;
}
- (instancetype) init:(const char*)name;
- (void) initFields;
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation;
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(ABHashtable*)hashtable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputPersistance_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
